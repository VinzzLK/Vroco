.class Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$3;
.super Landroid/window/IRemoteTransition$Stub;
.source "WindowTransitionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)V
    .locals 0

    .line 649
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$3;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-direct {p0}, Landroid/window/IRemoteTransition$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 678
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$3;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    const-string p1, "pair mergeAnimation"

    invoke-static {p0, p3, p1}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$600(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    return-void
.end method

.method public onTransitionConsumed(Landroid/os/IBinder;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 5

    .line 652
    invoke-static {}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HomeShellTransition PairRemoteTransition startAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    invoke-static {}, Lcom/miui/launcher/utils/BoostHelper;->getInstance()Lcom/miui/launcher/utils/BoostHelper;

    move-result-object v0

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Lcom/miui/launcher/utils/BoostHelper;->setDynamicVIPTaskIfNeeded(I)V

    .line 654
    new-instance v0, Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;

    invoke-direct {v0, p2}, Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;-><init>(Landroid/window/TransitionInfo;)V

    .line 655
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$3;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v1}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->clearTempSaveOpenLeash()V

    .line 656
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$3;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v1}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->onFrameWorkAnimCall()V

    .line 657
    invoke-static {p2}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->isClosingType(Landroid/window/TransitionInfo;)Z

    move-result v1

    .line 658
    invoke-static {}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startAnimation token = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", isClosingType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-object v2, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$3;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v2}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->setActivityIsCloseType(Z)V

    .line 662
    iget-object v1, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$3;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v1}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v1

    invoke-virtual {v1, p1, p4}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->setMainFinishCallback(Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V

    .line 663
    iget-object p4, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$3;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {p4}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object p4

    invoke-virtual {p4, p1, p2}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->setTransitionInfo(Landroid/os/IBinder;Landroid/window/TransitionInfo;)V

    .line 664
    iget-object p1, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$3;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {p1}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object p1

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->setRoot(Landroid/view/SurfaceControl;)V

    .line 667
    iget-object p1, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$3;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {p1}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object p1

    const/4 p4, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p3, p4, v1, p1}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrapAppsForCompat(Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;ZLcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p1

    .line 668
    iget-object v2, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$3;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v2}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v3, p3, p4, v2}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrapNonAppsForCompat(Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v2

    .line 669
    invoke-static {v0, v1, p3, p4, p4}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrapNonAppsForCompat(Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p4

    .line 670
    invoke-static {p2}, Lcom/android/hideapi/TransitionInfoExpose;->box(Landroid/window/TransitionInfo;)Lcom/android/hideapi/TransitionInfoExpose;

    move-result-object p2

    .line 671
    iget-object v0, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$3;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->addInfoExpose(Lcom/android/hideapi/TransitionInfoExpose;)V

    .line 672
    iget-object p0, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$3;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$000(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$WindowTransitionCompatListener;

    move-result-object p0

    invoke-interface {p0, p1, v2, p4}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$WindowTransitionCompatListener;->onPairTaskOpeningWindowTransitionStart([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    .line 673
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method
