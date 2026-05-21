.class public final Lcom/miui/home/recents/anim/FastLaunchWindowElement$getActivityOptions$1;
.super Lcom/miui/home/recents/anim/HyperRemoteTransition;
.source "FastLaunchWindowElement.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/anim/FastLaunchWindowElement;->getActivityOptions(Landroid/view/View;Lcom/miui/home/recents/FastLaunchData;)Landroid/app/ActivityOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $fastLaunchData:Lcom/miui/home/recents/FastLaunchData;

.field final synthetic this$0:Lcom/miui/home/recents/anim/FastLaunchWindowElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/recents/anim/FastLaunchWindowElement<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/home/recents/anim/FastLaunchWindowElement;Lcom/miui/home/recents/FastLaunchData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/recents/anim/FastLaunchWindowElement<",
            "TT;>;",
            "Lcom/miui/home/recents/FastLaunchData;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement$getActivityOptions$1;->this$0:Lcom/miui/home/recents/anim/FastLaunchWindowElement;

    iput-object p2, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement$getActivityOptions$1;->$fastLaunchData:Lcom/miui/home/recents/FastLaunchData;

    .line 372
    invoke-direct {p0}, Lcom/miui/home/recents/anim/HyperRemoteTransition;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionAbort(I)V
    .locals 3

    .line 375
    iget-object v0, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement$getActivityOptions$1;->this$0:Lcom/miui/home/recents/anim/FastLaunchWindowElement;

    invoke-static {v0}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->access$getTAG$p(Lcom/miui/home/recents/anim/FastLaunchWindowElement;)Ljava/lang/String;

    move-result-object v0

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TransitionTest onTransitionAbort openUseQuickStep="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement$getActivityOptions$1;->$fastLaunchData:Lcom/miui/home/recents/FastLaunchData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " syncId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " isHyperCalled="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement$getActivityOptions$1;->this$0:Lcom/miui/home/recents/anim/FastLaunchWindowElement;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/WindowElement;->getWindowTransitionCompat()Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->getCallbackHelper()Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->hasFinishHyperCallback()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 374
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object p1, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement$getActivityOptions$1;->this$0:Lcom/miui/home/recents/anim/FastLaunchWindowElement;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/WindowElement;->getMHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 379
    iget-object p1, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement$getActivityOptions$1;->this$0:Lcom/miui/home/recents/anim/FastLaunchWindowElement;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->useFastLaunch()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 382
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/recents/BaseRecentsImpl;->changeBackVisible(ZZ)V

    .line 383
    iget-object p1, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement$getActivityOptions$1;->this$0:Lcom/miui/home/recents/anim/FastLaunchWindowElement;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/WindowElement;->getWindowTransitionCompat()Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->getCallbackHelper()Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v2

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->hasFinishHyperCallback()Z

    move-result p1

    if-ne p1, v1, :cond_3

    return-void

    .line 386
    :cond_3
    iget-object p0, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement$getActivityOptions$1;->this$0:Lcom/miui/home/recents/anim/FastLaunchWindowElement;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getMOpeningRectFParams()Lcom/miui/home/recents/anim/RectFParams;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 387
    new-instance p1, Lcom/miui/home/recents/event/GestureAppAbortEventInfo;

    .line 388
    sget-object v0, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->INSTANCE:Lcom/miui/home/recents/anim/WindowAnimParamsProvider;

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getRemoteAbortParams(Lcom/miui/home/recents/anim/RectFParams;)Lcom/miui/home/recents/anim/RectFParams;

    move-result-object p0

    .line 387
    invoke-direct {p1, p0}, Lcom/miui/home/recents/event/GestureAppAbortEventInfo;-><init>(Lcom/miui/home/recents/anim/RectFParams;)V

    .line 390
    sget-object p0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p0

    new-instance v0, Lcom/miui/home/recents/event/RemoteShellAbortEvent;

    invoke-direct {v0, p1}, Lcom/miui/home/recents/event/RemoteShellAbortEvent;-><init>(Lcom/miui/home/recents/event/GestureAppAbortEventInfo;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    :cond_4
    return-void
.end method

.method public startActivityFinished(Landroid/window/ActivityStartInfo;Landroid/window/IHyperRemoteTransitionFinishedCallback;)V
    .locals 4

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "finishCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 398
    invoke-super {p0, p1, p2}, Lcom/android/systemui/shared/recents/system/BaseRemoteTransition;->startActivityFinished(Landroid/window/ActivityStartInfo;Landroid/window/IHyperRemoteTransitionFinishedCallback;)V

    .line 399
    iget-object v0, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement$getActivityOptions$1;->this$0:Lcom/miui/home/recents/anim/FastLaunchWindowElement;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/WindowElement;->setMFastLaunchData(Lcom/miui/home/recents/FastLaunchData;)V

    .line 402
    iget-object v0, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement$getActivityOptions$1;->this$0:Lcom/miui/home/recents/anim/FastLaunchWindowElement;

    invoke-static {v0}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->access$getTAG$p(Lcom/miui/home/recents/anim/FastLaunchWindowElement;)Ljava/lang/String;

    move-result-object v0

    .line 403
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startActivityFinished info="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",finishCallback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " , isOpen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    iget-object v3, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement$getActivityOptions$1;->$fastLaunchData:Lcom/miui/home/recents/FastLaunchData;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/miui/home/recents/FastLaunchData;->isOpen()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 403
    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    iget-object v3, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement$getActivityOptions$1;->$fastLaunchData:Lcom/miui/home/recents/FastLaunchData;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/miui/home/recents/FastLaunchData;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 403
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isCanceled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    iget-object v3, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement$getActivityOptions$1;->this$0:Lcom/miui/home/recents/anim/FastLaunchWindowElement;

    invoke-virtual {v3}, Lcom/miui/home/recents/anim/WindowElement;->getMCanceled()Z

    move-result v3

    .line 403
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", nativeCanceled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/HyperRemoteTransition;->hasCancel()Z

    move-result v3

    .line 403
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isSurfaceCanceled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    iget-object v3, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement$getActivityOptions$1;->this$0:Lcom/miui/home/recents/anim/FastLaunchWindowElement;

    invoke-virtual {v3}, Lcom/miui/home/recents/anim/WindowElement;->getMSurfaceCanceled()Z

    move-result v3

    .line 403
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 401
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-static {}, Lcom/miui/launcher/utils/BoostHelper;->getInstance()Lcom/miui/launcher/utils/BoostHelper;

    move-result-object v0

    const/16 v2, 0x96

    invoke-virtual {v0, v2}, Lcom/miui/launcher/utils/BoostHelper;->setDynamicVIPTaskIfNeeded(I)V

    .line 412
    iget-object v0, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement$getActivityOptions$1;->this$0:Lcom/miui/home/recents/anim/FastLaunchWindowElement;

    iget-object v2, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement$getActivityOptions$1;->$fastLaunchData:Lcom/miui/home/recents/FastLaunchData;

    invoke-virtual {v0, p1, v2}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->checkDataValid(Landroid/window/ActivityStartInfo;Lcom/miui/home/recents/FastLaunchData;)Z

    move-result v0

    const/4 v2, -0x1

    if-nez v0, :cond_4

    .line 413
    invoke-virtual {p1}, Landroid/window/ActivityStartInfo;->getTransitionSyncId()I

    move-result p2

    if-ne p2, v2, :cond_2

    invoke-virtual {p1}, Landroid/window/ActivityStartInfo;->isLaunchSuccess()Z

    move-result p1

    if-nez p1, :cond_2

    .line 414
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->stopOpenBlock()V

    .line 415
    iget-object p1, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement$getActivityOptions$1;->this$0:Lcom/miui/home/recents/anim/FastLaunchWindowElement;

    invoke-virtual {p1, v1}, Lcom/miui/home/recents/anim/WindowElement;->updateAnimTypeForNavStub(Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;)V

    .line 416
    iget-object p1, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement$getActivityOptions$1;->this$0:Lcom/miui/home/recents/anim/FastLaunchWindowElement;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/WindowElement;->onFinishCompleted()V

    .line 417
    iget-object p1, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement$getActivityOptions$1;->this$0:Lcom/miui/home/recents/anim/FastLaunchWindowElement;

    invoke-static {p1}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->access$getTAG$p(Lcom/miui/home/recents/anim/FastLaunchWindowElement;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "syncId is -1, current opening app appear directly, handled by DefaultHandler"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_2
    iget-object p0, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement$getActivityOptions$1;->$fastLaunchData:Lcom/miui/home/recents/FastLaunchData;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/miui/home/recents/FastLaunchData;->setClose()V

    :cond_3
    return-void

    .line 423
    :cond_4
    iget-object v0, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement$getActivityOptions$1;->this$0:Lcom/miui/home/recents/anim/FastLaunchWindowElement;

    invoke-virtual {p1}, Landroid/window/ActivityStartInfo;->getTransitionSyncId()I

    move-result v3

    invoke-static {v0, v3}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->access$setMCurRemoteSyncId$p(Lcom/miui/home/recents/anim/FastLaunchWindowElement;I)V

    .line 424
    iget-object v0, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement$getActivityOptions$1;->this$0:Lcom/miui/home/recents/anim/FastLaunchWindowElement;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WindowElement;->getWindowTransitionCompat()Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 426
    invoke-virtual {p1}, Landroid/window/ActivityStartInfo;->getTransitionSyncId()I

    move-result v3

    .line 424
    invoke-virtual {v0, p2, v3}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->setHyperRemoteTransitionFinishedCallback(Landroid/window/IHyperRemoteTransitionFinishedCallback;I)V

    .line 428
    :cond_5
    sget-object p2, Lcom/miui/home/recents/anim/FastLaunchUtils;->Companion:Lcom/miui/home/recents/anim/FastLaunchUtils$Companion;

    iget-object v0, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement$getActivityOptions$1;->$fastLaunchData:Lcom/miui/home/recents/FastLaunchData;

    invoke-virtual {v0}, Lcom/miui/home/recents/FastLaunchData;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/miui/home/recents/anim/FastLaunchUtils$Companion;->whiteColorPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 429
    iget-object p2, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement$getActivityOptions$1;->this$0:Lcom/miui/home/recents/anim/FastLaunchWindowElement;

    invoke-virtual {p2}, Lcom/miui/home/recents/anim/WindowElement;->getFloatingIcon()Lcom/miui/home/recents/FloatingIconInterface;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-interface {p2, v2}, Lcom/miui/home/recents/FloatingIconInterface;->setShadeColor(I)V

    goto :goto_2

    .line 430
    :cond_6
    iget-object v0, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement$getActivityOptions$1;->$fastLaunchData:Lcom/miui/home/recents/FastLaunchData;

    invoke-virtual {v0}, Lcom/miui/home/recents/FastLaunchData;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/miui/home/recents/anim/FastLaunchUtils$Companion;->blackColorPackage(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 431
    iget-object p2, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement$getActivityOptions$1;->this$0:Lcom/miui/home/recents/anim/FastLaunchWindowElement;

    invoke-virtual {p2}, Lcom/miui/home/recents/anim/WindowElement;->getFloatingIcon()Lcom/miui/home/recents/FloatingIconInterface;

    move-result-object p2

    if-eqz p2, :cond_8

    const/high16 v0, -0x1000000

    invoke-interface {p2, v0}, Lcom/miui/home/recents/FloatingIconInterface;->setShadeColor(I)V

    goto :goto_2

    .line 433
    :cond_7
    iget-object p2, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement$getActivityOptions$1;->this$0:Lcom/miui/home/recents/anim/FastLaunchWindowElement;

    invoke-virtual {p2}, Lcom/miui/home/recents/anim/WindowElement;->getFloatingIcon()Lcom/miui/home/recents/FloatingIconInterface;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Landroid/window/ActivityStartInfo;->getStartingWindowColor()I

    move-result v0

    invoke-interface {p2, v0}, Lcom/miui/home/recents/FloatingIconInterface;->setShadeColor(I)V

    .line 435
    :cond_8
    :goto_2
    iget-object p2, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement$getActivityOptions$1;->this$0:Lcom/miui/home/recents/anim/FastLaunchWindowElement;

    invoke-virtual {p2}, Lcom/miui/home/recents/anim/WindowElement;->getFloatingIcon()Lcom/miui/home/recents/FloatingIconInterface;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-interface {p2, v1}, Lcom/miui/home/recents/FloatingIconInterface;->setAppScreenShotBitmap(Landroid/graphics/Bitmap;)V

    .line 436
    :cond_9
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/HyperRemoteTransition;->getViewWeakReference()Ljava/lang/ref/WeakReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 437
    iget-object v0, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement$getActivityOptions$1;->this$0:Lcom/miui/home/recents/anim/FastLaunchWindowElement;

    iget-object v1, p0, Lcom/miui/home/recents/anim/FastLaunchWindowElement$getActivityOptions$1;->$fastLaunchData:Lcom/miui/home/recents/FastLaunchData;

    invoke-virtual {v0, v1, p1, p2, p0}, Lcom/miui/home/recents/anim/FastLaunchWindowElement;->startFastLaunch(Lcom/miui/home/recents/FastLaunchData;Landroid/window/ActivityStartInfo;Landroid/view/View;Lcom/miui/home/recents/anim/HyperRemoteTransition;)V

    return-void
.end method
