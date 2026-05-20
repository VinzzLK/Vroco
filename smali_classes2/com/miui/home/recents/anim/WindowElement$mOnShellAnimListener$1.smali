.class public final Lcom/miui/home/recents/anim/WindowElement$mOnShellAnimListener$1;
.super Ljava/lang/Object;
.source "WindowElement.kt"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/anim/WindowElement;-><init>(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;Z)V
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
.method public static synthetic $r8$lambda$7wsjoD4d6vlX8Ix3Xou5sBRuRPE(Lcom/miui/home/recents/anim/WindowElement;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/recents/anim/WindowElement$mOnShellAnimListener$1;->onAnimationEnd$lambda-0(Lcom/miui/home/recents/anim/WindowElement;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$EVXY7eZ3u1V5yjr_Tkl-lvdKUK4(Lcom/miui/home/recents/anim/WindowElement;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/recents/anim/WindowElement$mOnShellAnimListener$1;->onAnimationEnd$lambda-1(Lcom/miui/home/recents/anim/WindowElement;Z)V

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

    iput-object p1, p0, Lcom/miui/home/recents/anim/WindowElement$mOnShellAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final onAnimationEnd$lambda-0(Lcom/miui/home/recents/anim/WindowElement;Z)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 575
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/anim/WindowElement;->setWaitViewDrawCommitWhenAppToRecentAnimEnd(Z)V

    .line 576
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getClipAnimationHelper()Lcom/miui/home/recents/util/ClipAnimationHelper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 577
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getRemoteAnimationTargetSet()Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    move-result-object v2

    .line 578
    new-instance v3, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-direct {v3}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setTargetAlpha(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object v3

    .line 576
    invoke-virtual {v1, v2, v3}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;)Landroid/graphics/RectF;

    .line 580
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/recents/anim/WindowElement;->finishTransition(ZZ)V

    return-void
.end method

.method private static final onAnimationEnd$lambda-1(Lcom/miui/home/recents/anim/WindowElement;Z)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 585
    invoke-static {p0, p1, v0, v1, v2}, Lcom/miui/home/recents/anim/WindowElement;->finishTransition$default(Lcom/miui/home/recents/anim/WindowElement;ZZILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 6

    .line 554
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement$mOnShellAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-static {v0}, Lcom/miui/home/recents/anim/WindowElement;->access$getTAG$p(Lcom/miui/home/recents/anim/WindowElement;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/home/recents/anim/WindowElement$mOnShellAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mOnShellAnimListener end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->getLastAminType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/recents/anim/WindowElement$mOnShellAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " needFinish = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/recents/anim/WindowElement$mOnShellAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v3}, Lcom/miui/home/recents/anim/WindowElement;->getCurrentRectFParams()Lcom/miui/home/recents/anim/RectFParams;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/miui/home/recents/anim/RectFParams;->getNeedFinishOnAnimEnd()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " , mUseShellAnimListener="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/recents/anim/WindowElement$mOnShellAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v3}, Lcom/miui/home/recents/anim/WindowElement;->getMUseShellAnimListener()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager;->getPendingIconViewWeakRef()Ljava/lang/ref/WeakReference;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 556
    iget-object v3, p0, Lcom/miui/home/recents/anim/WindowElement$mOnShellAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v3, v0}, Lcom/miui/home/recents/anim/WindowElement;->isSameElement(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-ne v0, v1, :cond_2

    .line 557
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement$mOnShellAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-static {p0}, Lcom/miui/home/recents/anim/WindowElement;->access$getTAG$p(Lcom/miui/home/recents/anim/WindowElement;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "mOnShellAnimListener onAnimationEnd: pendingIconView is same as current, should not end"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 560
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/anim/WindowElement$mOnShellAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WindowElement;->getMUseShellAnimListener()Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    if-eqz p1, :cond_4

    .line 563
    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->getLastAminType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object p1

    goto :goto_2

    :cond_4
    move-object p1, v2

    .line 565
    :goto_2
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    const/4 v3, 0x0

    if-eq p1, v0, :cond_6

    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_RECENTS:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-eq p1, v0, :cond_6

    .line 566
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_FROM_FEED:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-eq p1, v0, :cond_6

    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_ELEMENT:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-eq p1, v0, :cond_6

    .line 567
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_WORLD_CIRCLE:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-eq p1, v0, :cond_6

    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_SMALL_WINDOW:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-eq p1, v0, :cond_6

    .line 568
    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_SMALL_WINDOW_ROTATE:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-eq p1, v0, :cond_6

    sget-object v0, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_HOME_CENTER:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-ne p1, v0, :cond_5

    goto :goto_3

    :cond_5
    move v0, v3

    goto :goto_4

    :cond_6
    :goto_3
    move v0, v1

    .line 569
    :goto_4
    iget-object v4, p0, Lcom/miui/home/recents/anim/WindowElement$mOnShellAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v4}, Lcom/miui/home/recents/anim/WindowElement;->getCurrentRectFParams()Lcom/miui/home/recents/anim/RectFParams;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/miui/home/recents/anim/WindowElement$mOnShellAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {v4}, Lcom/miui/home/recents/anim/WindowElement;->getCurrentRectFParams()Lcom/miui/home/recents/anim/RectFParams;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/miui/home/recents/anim/RectFParams;->getNeedFinishOnAnimEnd()Z

    move-result v4

    if-ne v4, v1, :cond_7

    move v4, v1

    goto :goto_5

    :cond_7
    move v4, v3

    :goto_5
    if-eqz v4, :cond_d

    .line 570
    :cond_8
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v4

    goto :goto_6

    :cond_9
    move-object v4, v2

    .line 571
    :goto_6
    sget-object v5, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_RECENTS:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-ne p1, v5, :cond_a

    if-eqz v4, :cond_a

    .line 572
    iget-object p1, p0, Lcom/miui/home/recents/anim/WindowElement$mOnShellAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {p1, v1}, Lcom/miui/home/recents/anim/WindowElement;->setWaitViewDrawCommitWhenAppToRecentAnimEnd(Z)V

    .line 574
    new-instance p1, Lcom/android/systemui/shared/recents/system/TimeOutTask;

    sget-object v1, Lcom/miui/home/recents/util/Executors;->MAIN_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    .line 573
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement$mOnShellAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    new-instance v2, Lcom/miui/home/recents/anim/WindowElement$mOnShellAnimListener$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/recents/anim/WindowElement$mOnShellAnimListener$1$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/anim/WindowElement;Z)V

    .line 574
    invoke-direct {p1, v1, v2}, Lcom/android/systemui/shared/recents/system/TimeOutTask;-><init>(Lcom/miui/home/library/utils/LooperExecutor;Ljava/lang/Runnable;)V

    .line 573
    invoke-static {v4, p1}, Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;->execRunnableWhenViewTransactionCommit(Landroid/view/View;Lcom/android/systemui/shared/recents/system/TimeOutTask;)V

    goto :goto_8

    .line 583
    :cond_a
    iget-object p1, p0, Lcom/miui/home/recents/anim/WindowElement$mOnShellAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/WindowElement;->getCurrentRectFParams()Lcom/miui/home/recents/anim/RectFParams;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/miui/home/recents/anim/WindowElement$mOnShellAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/WindowElement;->getCurrentRectFParams()Lcom/miui/home/recents/anim/RectFParams;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/RectFParams;->getAnimType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object p1

    goto :goto_7

    :cond_b
    move-object p1, v2

    :goto_7
    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_ELEMENT:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-ne p1, v1, :cond_c

    iget-object p1, p0, Lcom/miui/home/recents/anim/WindowElement$mOnShellAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/WindowElement;->getMSurfaceCanceled()Z

    move-result p1

    if-nez p1, :cond_c

    .line 585
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement$mOnShellAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    new-instance v1, Lcom/miui/home/recents/anim/WindowElement$mOnShellAnimListener$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/recents/anim/WindowElement$mOnShellAnimListener$1$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/recents/anim/WindowElement;Z)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p1, v1, v2, v3}, Lcom/miui/home/library/utils/LooperExecutor;->executeDelay(Ljava/lang/Runnable;J)V

    goto :goto_8

    .line 587
    :cond_c
    iget-object p0, p0, Lcom/miui/home/recents/anim/WindowElement$mOnShellAnimListener$1;->this$0:Lcom/miui/home/recents/anim/WindowElement;

    const/4 p1, 0x2

    invoke-static {p0, v0, v3, p1, v2}, Lcom/miui/home/recents/anim/WindowElement;->finishTransition$default(Lcom/miui/home/recents/anim/WindowElement;ZZILjava/lang/Object;)V

    .line 589
    :goto_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "finishTransition, "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onShellAnimListener_onAnimationEnd"

    invoke-static {p1, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void
.end method
