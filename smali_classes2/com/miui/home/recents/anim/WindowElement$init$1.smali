.class public final Lcom/miui/home/recents/anim/WindowElement$init$1;
.super Lcom/miui/home/recents/anim/WindowTransitionCompatListener;
.source "WindowElement.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/anim/WindowElement;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/anim/WindowElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/home/recents/anim/WindowElement<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$JttdjSZThX0llX7PRCGvUvHeHWI(Lcom/miui/home/recents/anim/WindowElement$init$1;Lcom/miui/home/recents/anim/WindowElement;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/home/recents/anim/WindowElement$init$1;->onOpeningWindowTransitionStart$lambda-0(Lcom/miui/home/recents/anim/WindowElement$init$1;Lcom/miui/home/recents/anim/WindowElement;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zbGjcf5URlrvU3S3pMDkTI8Cu2o(ZLcom/miui/home/recents/anim/WindowElement;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/recents/anim/WindowElement$init$1;->onTransitionMerged$lambda-1(ZLcom/miui/home/recents/anim/WindowElement;Z)V

    return-void
.end method

.method constructor <init>(Lcom/miui/home/recents/anim/WindowElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/recents/anim/WindowElement<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/home/recents/anim/WindowElement$init$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    .line 1581
    invoke-direct {p0}, Lcom/miui/home/recents/anim/WindowTransitionCompatListener;-><init>()V

    return-void
.end method

.method private static final onOpeningWindowTransitionStart$lambda-0(Lcom/miui/home/recents/anim/WindowElement$init$1;Lcom/miui/home/recents/anim/WindowElement;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$targets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$helper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1587
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowTransitionCompatListener;->hasCancel()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1588
    invoke-static {p1}, Lcom/miui/home/recents/anim/WindowElement;->access$getTAG$p(Lcom/miui/home/recents/anim/WindowElement;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "onOpeningWindowTransitionStart end,already canceled."

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 1589
    invoke-static {p1, p3, p3, p0, p2}, Lcom/miui/home/recents/anim/WindowElement;->finishTransition$default(Lcom/miui/home/recents/anim/WindowElement;ZZILjava/lang/Object;)V

    .line 1590
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/miui/home/recents/anim/WindowElement;->access$getTAG$p(Lcom/miui/home/recents/anim/WindowElement;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_onOpeningWindowTransitionStart"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "finishTransition, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1591
    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    .line 1590
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1595
    :cond_0
    invoke-virtual {p1, p2, p3, p4}, Lcom/miui/home/recents/anim/WindowElement;->openingWindowTransitionStart([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method private static final onTransitionMerged$lambda-1(ZLcom/miui/home/recents/anim/WindowElement;Z)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 1633
    invoke-virtual {p1, p0}, Lcom/miui/home/recents/anim/WindowElement;->setMDuringMerge(Z)V

    if-nez p2, :cond_0

    .line 1634
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/WindowElement;->getMEndWaitingMerge()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1635
    invoke-virtual {p1}, Lcom/miui/home/recents/anim/WindowElement;->getMRectFSpringAnimListener()Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;

    move-result-object p2

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/WindowElement;->getMAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;->onAnimationEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    .line 1637
    :cond_0
    invoke-virtual {p1, p0}, Lcom/miui/home/recents/anim/WindowElement;->setMEndWaitingMerge(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onAnimCancelByShellFinished(Z)V
    .locals 2

    .line 1622
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement$init$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WindowElement;->getMHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1623
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement$init$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/WindowElement;->onAnimCancelByShellFinishedExecute(Z)V

    return-void
.end method

.method public onClosingWindowTransitionStart([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V
    .locals 9

    const-string v0, "targets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nonApps"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1603
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement$init$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-static {v0}, Lcom/miui/home/recents/anim/WindowElement;->access$getTAG$p(Lcom/miui/home/recents/anim/WindowElement;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClosingWindowTransitionStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement$init$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WindowElement;->getMHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1605
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement$init$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WindowElement;->useFastLaunch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1606
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement$init$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WindowElement;->getMFastLaunchData()Lcom/miui/home/recents/FastLaunchData;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowTransitionCompatListener;->hasCancel()Z

    move-result p0

    invoke-virtual {v0, p1, p2, v1, p0}, Lcom/miui/home/recents/anim/WindowElement;->onClosingWindowTransitionExecute([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/FastLaunchData;Z)V

    goto :goto_0

    .line 1608
    :cond_0
    iget-object v2, p0, Lcom/miui/home/recents/anim/WindowElement$init$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowTransitionCompatListener;->hasCancel()Z

    move-result v6

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v2 .. v8}, Lcom/miui/home/recents/anim/WindowElement;->onClosingWindowTransitionExecute$default(Lcom/miui/home/recents/anim/WindowElement;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/miui/home/recents/FastLaunchData;ZILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onFinishCompleted()V
    .locals 2

    .line 1643
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement$init$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WindowElement;->getMOpeningRectFParams()Lcom/miui/home/recents/anim/RectFParams;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/RectFParams;->setTargetView(Landroid/view/View;)V

    .line 1644
    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement$init$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WindowElement;->getMOpeningRectFParams()Lcom/miui/home/recents/anim/RectFParams;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/RectFParams;->setAnimListener(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;)V

    .line 1645
    :goto_1
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement$init$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->onFinishCompleted()V

    return-void
.end method

.method public onOpeningWindowTransitionStart([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;Landroid/app/ActivityManager$RunningTaskInfo;I)V
    .locals 7

    const-string p4, "targets"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "helper"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1583
    iget-object p4, p0, Lcom/miui/home/recents/anim/WindowElement$init$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-static {p4}, Lcom/miui/home/recents/anim/WindowElement;->access$getTAG$p(Lcom/miui/home/recents/anim/WindowElement;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "onOpeningWindowTransitionStart"

    invoke-static {p4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object p4

    invoke-virtual {p4}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object p4

    const-string v0, ""

    invoke-virtual {p4, v0}, Lcom/miui/home/recents/BaseRecentsImpl;->setLastBackCloseApp(Ljava/lang/String;)V

    .line 1585
    iget-object p4, p0, Lcom/miui/home/recents/anim/WindowElement$init$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {p4}, Lcom/miui/home/recents/anim/WindowElement;->getMHandler()Landroid/os/Handler;

    move-result-object p4

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1586
    sget-object p4, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    iget-object v2, p0, Lcom/miui/home/recents/anim/WindowElement$init$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    new-instance v6, Lcom/miui/home/recents/anim/WindowElement$init$1$$ExternalSyntheticLambda0;

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/anim/WindowElement$init$1$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/anim/WindowElement$init$1;Lcom/miui/home/recents/anim/WindowElement;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-virtual {p4, v6}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPairTaskOpeningWindowTransitionStart([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V
    .locals 2

    const-string v0, "targets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wallpapers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nonApps"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1617
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement$init$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WindowElement;->getMHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1618
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement$init$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowTransitionCompatListener;->hasCancel()Z

    move-result p0

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/miui/home/recents/anim/WindowElement;->onPairTaskOpeningWindowTransitionExecute([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Z)V

    return-void
.end method

.method public onTransitionMerged(ZZ)V
    .locals 3

    .line 1627
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement$init$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-static {v0}, Lcom/miui/home/recents/anim/WindowElement;->access$getTAG$p(Lcom/miui/home/recents/anim/WindowElement;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTransitionMerged, done = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " hasNewAnim = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 1629
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement$init$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/WindowElement;->setMDuringMerge(Z)V

    .line 1631
    :cond_0
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement$init$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    new-instance v1, Lcom/miui/home/recents/anim/WindowElement$init$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p0, p2}, Lcom/miui/home/recents/anim/WindowElement$init$1$$ExternalSyntheticLambda1;-><init>(ZLcom/miui/home/recents/anim/WindowElement;Z)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
