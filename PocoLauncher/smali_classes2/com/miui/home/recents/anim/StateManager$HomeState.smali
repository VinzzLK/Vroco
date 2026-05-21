.class final Lcom/miui/home/recents/anim/StateManager$HomeState;
.super Lcom/miui/home/recents/anim/State;
.source "StateManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/anim/StateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HomeState"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStateManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StateManager.kt\ncom/miui/home/recents/anim/StateManager$HomeState\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1689:1\n1#2:1690\n*E\n"
.end annotation


# instance fields
.field private final stateName:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/home/recents/anim/StateManager;


# direct methods
.method public static synthetic $r8$lambda$4JheeREEV4CxGhT8Rtr1nwEwn4A(Lcom/miui/home/recents/anim/StateManager;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/recents/anim/StateManager$HomeState;->launchWidgetView$lambda-6$lambda-5(Lcom/miui/home/recents/anim/StateManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I_m2xRZgFR1woOfSQaSpWJoNMng(Lcom/miui/home/recents/anim/StateManager;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/recents/anim/StateManager$HomeState;->launchWidgetView$lambda-6(Lcom/miui/home/recents/anim/StateManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Uz8B4ttfR20QiioUPVewLhwl__U(Lcom/miui/home/recents/anim/StateManager;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/recents/anim/StateManager$HomeState;->launchIconView$lambda-4$lambda-3(Lcom/miui/home/recents/anim/StateManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tYHP6Scnu92klIqsh4da29CvkRE(Lcom/miui/home/recents/anim/StateManager;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/recents/anim/StateManager$HomeState;->launchIconView$lambda-4(Lcom/miui/home/recents/anim/StateManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/recents/anim/StateManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 297
    iput-object p1, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-direct {p0}, Lcom/miui/home/recents/anim/State;-><init>()V

    const-string p1, "HomeState"

    .line 298
    iput-object p1, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->stateName:Ljava/lang/String;

    return-void
.end method

.method private final cancelWindowElementAnimIfRunning(Lcom/miui/home/recents/event/Event;)V
    .locals 9

    .line 408
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WindowElement;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v0, " need cancel."

    const/16 v2, 0x20

    if-eqz v1, :cond_1

    .line 409
    iget-object v3, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager$HomeState;->getStateName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/recents/event/Event;->getType()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/miui/home/recents/anim/StateManager;->cancelAll$default(Lcom/miui/home/recents/anim/StateManager;Ljava/lang/String;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;ILjava/lang/Object;)V

    goto :goto_1

    .line 411
    :cond_1
    iget-object v1, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager$HomeState;->getStateName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/home/recents/event/Event;->getType()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/miui/home/recents/anim/StateManager;->cancelOldList(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private final isViewShowComplete(II)Z
    .locals 1

    .line 416
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {p0}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 417
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->getLauncherTargetView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 418
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    if-lt v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    if-le p0, p2, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private final launchIconView(Lcom/miui/home/recents/event/IconClickEventInfo;Ljava/lang/String;)V
    .locals 6

    .line 502
    sget-object v0, Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;->INSTANCE:Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;

    .line 505
    invoke-virtual {p1}, Lcom/miui/home/recents/event/IconClickEventInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-wide/16 v3, 0x128

    const/4 v5, 0x1

    .line 502
    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;->setScenarioState(JZLjava/lang/String;)V

    .line 508
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->startOpenBlock()V

    .line 509
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lcom/miui/home/recents/event/IconClickEventInfo;->getView()Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/StateManager;->setPendingIconViewWeakRef(Ljava/lang/ref/WeakReference;)V

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launchIconView currentWindowElement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pendingIconView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/StateManager;->getPendingIconViewWeakRef()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimStateManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v0

    if-nez v0, :cond_1

    .line 512
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-virtual {p1}, Lcom/miui/home/recents/event/IconClickEventInfo;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1}, Lcom/miui/home/recents/event/IconClickEventInfo;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/recents/event/IconClickEventInfo;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p2, v0, p1}, Lcom/miui/home/recents/anim/StateManager;->onLauncherStartActivity(Landroid/content/Intent;Ljava/lang/Object;Landroid/view/View;)V

    goto :goto_2

    .line 514
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launchIconView current= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v3}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/miui/home/recents/anim/WindowElement;->getLauncherTargetView()Landroid/view/View;

    move-result-object v2

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", click= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    invoke-virtual {p1}, Lcom/miui/home/recents/event/IconClickEventInfo;->getView()Landroid/view/View;

    move-result-object v2

    .line 514
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    new-instance v1, Lcom/miui/home/recents/anim/StateManager$HomeState$launchIconView$1;

    invoke-direct {v1, p1, v0}, Lcom/miui/home/recents/anim/StateManager$HomeState$launchIconView$1;-><init>(Lcom/miui/home/recents/event/IconClickEventInfo;Lcom/miui/home/recents/anim/StateManager;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/StateManager;->setLaunchIconRunnable(Ljava/lang/Runnable;)V

    .line 523
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/miui/home/recents/event/IconClickEventInfo;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/anim/WindowElement;->isSameElement(Landroid/view/View;)Z

    move-result p1

    if-ne p1, v5, :cond_3

    goto :goto_1

    :cond_3
    move v5, v1

    .line 524
    :goto_1
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    new-instance p1, Lcom/miui/home/recents/anim/StateManager$HomeState$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/miui/home/recents/anim/StateManager$HomeState$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/recents/anim/StateManager;)V

    invoke-virtual {p0, p2, v5, p1}, Lcom/miui/home/recents/anim/StateManager;->cancelAnim(Ljava/lang/String;ZLcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;)V

    :goto_2
    return-void
.end method

.method private static final launchIconView$lambda-4(Lcom/miui/home/recents/anim/StateManager;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AnimStateManager"

    const-string v1, "launchIconView: managerTransitionCallback"

    .line 525
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/anim/StateManager$HomeState$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/anim/StateManager$HomeState$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/recents/anim/StateManager;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final launchIconView$lambda-4$lambda-3(Lcom/miui/home/recents/anim/StateManager;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 527
    new-instance v0, Lcom/miui/home/recents/anim/StateManager$HomeState$launchIconView$2$1$1;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/anim/StateManager$HomeState$launchIconView$2$1$1;-><init>(Lcom/miui/home/recents/anim/StateManager;)V

    .line 533
    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$HomeState$launchIconView$2$1$1;->run()V

    return-void
.end method

.method private final launchWidgetView(Lcom/miui/home/recents/event/WidgetClickEventInfo;Ljava/lang/String;)V
    .locals 9

    .line 540
    invoke-virtual {p1}, Lcom/miui/home/recents/event/WidgetClickEventInfo;->getFillInIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/recents/event/WidgetClickEventInfo;->getIntent()Landroid/content/IntentSender;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/IntentSender;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 541
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    move v3, v1

    goto :goto_2

    :cond_4
    :goto_1
    move v3, v2

    :goto_2
    if-nez v3, :cond_5

    .line 542
    sget-object v3, Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;->INSTANCE:Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;

    const-wide/16 v4, 0x128

    invoke-virtual {v3, v4, v5, v2, v0}, Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;->setScenarioState(JZLjava/lang/String;)V

    .line 549
    :cond_5
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWidgetTypeIconAnimHelper()Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/miui/home/recents/event/WidgetClickEventInfo;->getLaunchAppWidgetViewInfo()Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper;->setLaunchAppWidgetViewInfo(Lcom/miui/home/launcher/util/WidgetTypeIconAnimHelper$LaunchAppWidgetViewInfo;)V

    .line 550
    :cond_6
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->startOpenBlock()V

    .line 551
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lcom/miui/home/recents/event/WidgetClickEventInfo;->getView()Landroid/view/View;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lcom/miui/home/recents/anim/StateManager;->setPendingIconViewWeakRef(Ljava/lang/ref/WeakReference;)V

    .line 552
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WindowElement;->mainAnimNoFinishClear()Z

    move-result v0

    if-ne v0, v2, :cond_7

    move v1, v2

    :cond_7
    if-eqz v1, :cond_8

    .line 553
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    new-instance v1, Lcom/miui/home/recents/anim/StateManager$WeakLaunchWidgetRunnable;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v3}, Lcom/miui/home/recents/anim/StateManager;->access$getAppState$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/StateManager$AppState;

    move-result-object v3

    invoke-direct {p1, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2, p1}, Lcom/miui/home/recents/anim/StateManager$WeakLaunchWidgetRunnable;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/StateManager;->setLaunchWidgetRunnable(Ljava/lang/Runnable;)V

    .line 554
    iget-object p1, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {p1}, Lcom/miui/home/recents/anim/StateManager;->access$homeClickStart(Lcom/miui/home/recents/anim/StateManager;)V

    .line 555
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    const/4 v2, 0x0

    new-instance v3, Lcom/miui/home/recents/anim/StateManager$HomeState$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/miui/home/recents/anim/StateManager$HomeState$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/anim/StateManager;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/miui/home/recents/anim/StateManager;->cancelAnim$default(Lcom/miui/home/recents/anim/StateManager;Ljava/lang/String;ZLcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;ILjava/lang/Object;)V

    goto :goto_3

    .line 564
    :cond_8
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v1

    if-eqz v1, :cond_9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1e

    const/4 v8, 0x0

    move-object v2, p2

    invoke-static/range {v1 .. v8}, Lcom/miui/home/recents/anim/WindowElement;->cancelAnim$default(Lcom/miui/home/recents/anim/WindowElement;Ljava/lang/String;ZLcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Ljava/lang/Boolean;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;ILjava/lang/Object;)V

    .line 565
    :cond_9
    iget-object p2, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-virtual {p2}, Lcom/miui/home/recents/anim/StateManager;->resetState()V

    .line 566
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/StateManager;->createWindowElement(Lcom/miui/home/recents/event/WidgetClickEventInfo;)V

    :goto_3
    return-void
.end method

.method private static final launchWidgetView$lambda-6(Lcom/miui/home/recents/anim/StateManager;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 556
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/anim/StateManager$HomeState$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/anim/StateManager$HomeState$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/recents/anim/StateManager;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final launchWidgetView$lambda-6$lambda-5(Lcom/miui/home/recents/anim/StateManager;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 557
    invoke-static {p0}, Lcom/miui/home/recents/anim/StateManager;->access$getCurrentLauncher$p(Lcom/miui/home/recents/anim/StateManager;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager;->getLaunchWidgetRunnable()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    const/4 v0, 0x0

    .line 560
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/anim/StateManager;->setLaunchWidgetRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final onGestureHomeMove(Lcom/miui/home/recents/event/Event;)V
    .locals 8

    .line 428
    invoke-virtual {p1}, Lcom/miui/home/recents/event/Event;->getInfo()Lcom/miui/home/recents/event/EventInfo;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.miui.home.recents.event.GestureHomeMoveEventInfo"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/miui/home/recents/event/GestureHomeMoveEventInfo;

    .line 429
    invoke-virtual {p1}, Lcom/miui/home/recents/event/GestureHomeMoveEventInfo;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getTaskViewsElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/TaskViewsElement;

    move-result-object v0

    new-instance v7, Lcom/miui/home/recents/anim/TaskViewsParams;

    const/16 v2, 0x8

    invoke-virtual {p1}, Lcom/miui/home/recents/event/GestureHomeMoveEventInfo;->getParams()Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/recents/anim/TaskViewsParams;-><init>(ILcom/miui/home/recents/anim/TaskViewParamsInfo;Lcom/miui/home/recents/views/TaskView;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v7}, Lcom/miui/home/recents/anim/TaskViewsElement;->animTo(Ljava/lang/Object;)V

    .line 448
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getShortcutMenuLayerElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;

    move-result-object v0

    sget-object v1, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->Companion:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;

    invoke-virtual {p1}, Lcom/miui/home/recents/event/GestureHomeMoveEventInfo;->getPer()F

    move-result p1

    invoke-virtual {v1, p1}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;->getHomeExitHoldStateParams(F)Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->animTo(Ljava/lang/Object;)V

    .line 449
    iget-object p1, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {p1}, Lcom/miui/home/recents/anim/StateManager;->access$getRecentBlurViewElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/RecentBlurViewElement;

    move-result-object p1

    sget-object v0, Lcom/miui/home/recents/anim/RecentBlurParams;->Companion:Lcom/miui/home/recents/anim/RecentBlurParams$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/RecentBlurParams$Companion;->getHomeExitHoldParams()Lcom/miui/home/recents/anim/RecentBlurParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/anim/RecentBlurViewElement;->animTo(Ljava/lang/Object;)V

    .line 450
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {p0}, Lcom/miui/home/recents/anim/StateManager;->access$getWallpaperElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WallpaperElement;

    move-result-object p0

    sget-object p1, Lcom/miui/home/recents/anim/WallpaperParam;->Companion:Lcom/miui/home/recents/anim/WallpaperParam$Companion;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/WallpaperParam$Companion;->getHomeStateParams()Lcom/miui/home/recents/anim/WallpaperParam;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/WallpaperElement;->animTo(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 440
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getTaskViewsElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/TaskViewsElement;

    move-result-object v0

    new-instance v7, Lcom/miui/home/recents/anim/TaskViewsParams;

    const/4 v2, 0x7

    invoke-virtual {p1}, Lcom/miui/home/recents/event/GestureHomeMoveEventInfo;->getParams()Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/recents/anim/TaskViewsParams;-><init>(ILcom/miui/home/recents/anim/TaskViewParamsInfo;Lcom/miui/home/recents/views/TaskView;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v7}, Lcom/miui/home/recents/anim/TaskViewsElement;->animTo(Ljava/lang/Object;)V

    .line 441
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getShortcutMenuLayerElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;

    move-result-object v0

    sget-object v1, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->Companion:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;

    invoke-virtual {p1}, Lcom/miui/home/recents/event/GestureHomeMoveEventInfo;->getPer()F

    move-result p1

    invoke-virtual {v1, p1}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;->getHomeEnterHoldStateParams(F)Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->animTo(Ljava/lang/Object;)V

    .line 442
    iget-object p1, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {p1}, Lcom/miui/home/recents/anim/StateManager;->access$getRecentBlurViewElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/RecentBlurViewElement;

    move-result-object p1

    sget-object v0, Lcom/miui/home/recents/anim/RecentBlurParams;->Companion:Lcom/miui/home/recents/anim/RecentBlurParams$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/RecentBlurParams$Companion;->getHomeHoldParams()Lcom/miui/home/recents/anim/RecentBlurParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/anim/RecentBlurViewElement;->animTo(Ljava/lang/Object;)V

    .line 443
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {p0}, Lcom/miui/home/recents/anim/StateManager;->access$getWallpaperElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WallpaperElement;

    move-result-object p0

    sget-object p1, Lcom/miui/home/recents/anim/WallpaperParam;->Companion:Lcom/miui/home/recents/anim/WallpaperParam$Companion;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/WallpaperParam$Companion;->getRecentStateParams()Lcom/miui/home/recents/anim/WallpaperParam;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/WallpaperElement;->animTo(Ljava/lang/Object;)V

    goto :goto_0

    .line 435
    :cond_2
    sget-object v0, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->Companion:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;

    invoke-virtual {p1}, Lcom/miui/home/recents/event/GestureHomeMoveEventInfo;->getPer()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;->getHomeHoldStateParams(F)Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getShortcutMenuLayerElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->animTo(Ljava/lang/Object;)V

    .line 436
    :cond_3
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {p0}, Lcom/miui/home/recents/anim/StateManager;->access$getTaskViewsElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/TaskViewsElement;

    move-result-object p0

    new-instance v6, Lcom/miui/home/recents/anim/TaskViewsParams;

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/miui/home/recents/event/GestureHomeMoveEventInfo;->getParams()Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/anim/TaskViewsParams;-><init>(ILcom/miui/home/recents/anim/TaskViewParamsInfo;Lcom/miui/home/recents/views/TaskView;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v6}, Lcom/miui/home/recents/anim/TaskViewsElement;->animTo(Ljava/lang/Object;)V

    goto :goto_0

    .line 431
    :cond_4
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {p0}, Lcom/miui/home/recents/anim/StateManager;->access$getShortcutMenuLayerElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;

    move-result-object p0

    sget-object v0, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->Companion:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;

    invoke-virtual {p1}, Lcom/miui/home/recents/event/GestureHomeMoveEventInfo;->getPer()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;->getHomeDragStateParams(F)Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->animTo(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private final onIconClick(Lcom/miui/home/recents/event/Event;)V
    .locals 6

    .line 456
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WindowElement;->isPairCloseToHomeAnimRunning()Z

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 459
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v3

    :goto_1
    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/LauncherStateManager;->setOverlayScrolling(Z)V

    .line 460
    :goto_2
    invoke-virtual {p1}, Lcom/miui/home/recents/event/Event;->getInfo()Lcom/miui/home/recents/event/EventInfo;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.miui.home.recents.event.IconClickEventInfo"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/miui/home/recents/event/IconClickEventInfo;

    .line 461
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/miui/home/recents/event/IconClickEventInfo;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/miui/home/recents/anim/WindowElement;->isSameElement(Landroid/view/View;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3

    :cond_4
    move-object v0, v3

    .line 462
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onIconClick windowElement?.isReusefulAnimRunning()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v5}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/miui/home/recents/anim/WindowElement;->isReusefulAnimRunning()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :cond_5
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", windowElement?.isSameElement(info.view)="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AnimStateManager"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v3, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v3}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/miui/home/recents/anim/WindowElement;->isReusefulAnimRunning()Z

    move-result v3

    if-ne v3, v1, :cond_6

    goto :goto_4

    :cond_6
    move v1, v2

    :goto_4
    if-eqz v1, :cond_8

    .line 465
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 466
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-virtual {p1}, Lcom/miui/home/recents/event/IconClickEventInfo;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/home/recents/anim/StateManager;->access$animToFullScreen(Lcom/miui/home/recents/anim/StateManager;Landroid/view/View;)V

    goto :goto_5

    .line 468
    :cond_7
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$notifyActivityWillStartFromHome(Lcom/miui/home/recents/anim/StateManager;)V

    const-string v0, "Icon click another App."

    .line 469
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/anim/StateManager$HomeState;->launchIconView(Lcom/miui/home/recents/event/IconClickEventInfo;Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    const-string v0, "Icon click without recent."

    .line 473
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/anim/StateManager$HomeState;->launchIconView(Lcom/miui/home/recents/event/IconClickEventInfo;Ljava/lang/String;)V

    .line 475
    :goto_5
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {p0}, Lcom/miui/home/recents/anim/StateManager;->access$getAppState$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/StateManager$AppState;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/home/recents/anim/StateManager;->access$gotoState(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/State;)V

    return-void
.end method

.method private final onWidgetClick(Lcom/miui/home/recents/event/Event;)V
    .locals 4

    .line 479
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WindowElement;->isPairCloseToHomeAnimRunning()Z

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 482
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/recents/event/Event;->getInfo()Lcom/miui/home/recents/event/EventInfo;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.miui.home.recents.event.WidgetClickEventInfo"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/miui/home/recents/event/WidgetClickEventInfo;

    .line 483
    invoke-virtual {p1}, Lcom/miui/home/recents/event/WidgetClickEventInfo;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 484
    iget-object v3, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v3}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/miui/home/recents/anim/WindowElement;->isReusefulAnimRunning()Z

    move-result v3

    if-ne v3, v1, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    if-eqz v3, :cond_5

    .line 485
    iget-object v3, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v3}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3, v0}, Lcom/miui/home/recents/anim/WindowElement;->isSameElement(Landroid/view/View;)Z

    move-result v3

    if-ne v3, v1, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    if-eqz v1, :cond_4

    .line 486
    iget-object p1, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {p1, v0}, Lcom/miui/home/recents/anim/StateManager;->access$animToFullScreen(Lcom/miui/home/recents/anim/StateManager;Landroid/view/View;)V

    goto :goto_3

    .line 488
    :cond_4
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$notifyActivityWillStartFromHome(Lcom/miui/home/recents/anim/StateManager;)V

    const-string v0, "Widget click another Widget."

    .line 489
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/anim/StateManager$HomeState;->launchWidgetView(Lcom/miui/home/recents/event/WidgetClickEventInfo;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string v0, "Widget click without recent."

    .line 493
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/anim/StateManager$HomeState;->launchWidgetView(Lcom/miui/home/recents/event/WidgetClickEventInfo;Ljava/lang/String;)V

    .line 495
    :goto_3
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {p0}, Lcom/miui/home/recents/anim/StateManager;->access$getAppState$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/StateManager$AppState;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/home/recents/anim/StateManager;->access$gotoState(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/State;)V

    return-void
.end method


# virtual methods
.method public getStateName()Ljava/lang/String;
    .locals 0

    .line 298
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->stateName:Ljava/lang/String;

    return-object p0
.end method

.method public handleEvent(Lcom/miui/home/recents/event/Event;)V
    .locals 13

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    invoke-super {p0, p1}, Lcom/miui/home/recents/anim/State;->handleEvent(Lcom/miui/home/recents/event/Event;)V

    .line 301
    invoke-virtual {p1}, Lcom/miui/home/recents/event/Event;->getType()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_b

    const/16 v1, 0x3ea

    if-eq v0, v1, :cond_a

    const/16 v1, 0x7df

    if-eq v0, v1, :cond_9

    const/16 v1, 0x7e0

    if-eq v0, v1, :cond_9

    const-string v1, " outside cancel."

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_2

    .line 388
    :pswitch_0
    check-cast p1, Lcom/miui/home/recents/event/GestureHomeStartTaskEvent;

    .line 390
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getTaskViewsElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/TaskViewsElement;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/recents/event/GestureHomeStartTaskEvent;->getTaskViewParamsInfo()Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/TaskViewsElement;->setTaskViewParamsInfo(Lcom/miui/home/recents/anim/TaskViewParamsInfo;)V

    .line 392
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1e

    const/4 v12, 0x0

    const-string v6, "start task"

    invoke-static/range {v5 .. v12}, Lcom/miui/home/recents/anim/WindowElement;->cancelAnim$default(Lcom/miui/home/recents/anim/WindowElement;Ljava/lang/String;ZLcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Ljava/lang/Boolean;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;ILjava/lang/Object;)V

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0, v3, v2, v4}, Lcom/miui/home/recents/anim/StateManager;->createWindowElement$default(Lcom/miui/home/recents/anim/StateManager;ZILjava/lang/Object;)V

    .line 394
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/recents/event/GestureHomeStartTaskEvent;->getRectFParams()Lcom/miui/home/recents/anim/RectFParams;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/anim/WindowElement;->animTo(Ljava/lang/Object;)V

    .line 396
    :cond_1
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {p0}, Lcom/miui/home/recents/anim/StateManager;->access$getAppState$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/StateManager$AppState;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/home/recents/anim/StateManager;->access$gotoState(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/State;)V

    goto/16 :goto_2

    .line 381
    :pswitch_1
    iget-object p1, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {p1}, Lcom/miui/home/recents/anim/StateManager;->access$getTaskViewsElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/TaskViewsElement;

    move-result-object p1

    new-instance v6, Lcom/miui/home/recents/anim/TaskViewsParams;

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/anim/TaskViewsParams;-><init>(ILcom/miui/home/recents/anim/TaskViewParamsInfo;Lcom/miui/home/recents/views/TaskView;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, v6}, Lcom/miui/home/recents/anim/TaskViewsElement;->animTo(Ljava/lang/Object;)V

    .line 382
    iget-object p1, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {p1}, Lcom/miui/home/recents/anim/StateManager;->access$getShortcutMenuLayerElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;

    move-result-object p1

    sget-object v0, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->Companion:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;->getRecentStateParams()Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->animTo(Ljava/lang/Object;)V

    .line 383
    iget-object p1, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {p1}, Lcom/miui/home/recents/anim/StateManager;->access$getWallpaperElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WallpaperElement;

    move-result-object p1

    sget-object v0, Lcom/miui/home/recents/anim/WallpaperParam;->Companion:Lcom/miui/home/recents/anim/WallpaperParam$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WallpaperParam$Companion;->getRecentStateParams()Lcom/miui/home/recents/anim/WallpaperParam;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/anim/WallpaperElement;->animTo(Ljava/lang/Object;)V

    .line 384
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {p0}, Lcom/miui/home/recents/anim/StateManager;->access$getIdleState$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/StateManager$IdleState;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/home/recents/anim/StateManager;->access$gotoState(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/State;)V

    goto/16 :goto_2

    .line 361
    :pswitch_2
    invoke-virtual {p1}, Lcom/miui/home/recents/event/Event;->getInfo()Lcom/miui/home/recents/event/EventInfo;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.miui.home.recents.event.GestureHomeToHomeEventInfo"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/miui/home/recents/event/GestureHomeToHomeEventInfo;

    .line 362
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getShortcutMenuLayerElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->addExitOverviewEndListener()V

    .line 363
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getShortcutMenuLayerElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;

    move-result-object v0

    sget-object v1, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->Companion:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;->getHomeStateParams()Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->animTo(Ljava/lang/Object;)V

    .line 364
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getRecentBlurViewElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/RecentBlurViewElement;

    move-result-object v0

    sget-object v1, Lcom/miui/home/recents/anim/RecentBlurParams;->Companion:Lcom/miui/home/recents/anim/RecentBlurParams$Companion;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/RecentBlurParams$Companion;->getHomeStateParams()Lcom/miui/home/recents/anim/RecentBlurParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/RecentBlurViewElement;->animTo(Ljava/lang/Object;)V

    .line 365
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getWallpaperElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WallpaperElement;

    move-result-object v0

    sget-object v1, Lcom/miui/home/recents/anim/WallpaperParam;->Companion:Lcom/miui/home/recents/anim/WallpaperParam$Companion;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/WallpaperParam$Companion;->getHomeStateParams()Lcom/miui/home/recents/anim/WallpaperParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/WallpaperElement;->animTo(Ljava/lang/Object;)V

    .line 367
    invoke-virtual {p1}, Lcom/miui/home/recents/event/GestureHomeToHomeEventInfo;->getTaskViewInfo()Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 369
    iget-object p1, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {p1}, Lcom/miui/home/recents/anim/StateManager;->access$getTaskViewsElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/TaskViewsElement;

    move-result-object p1

    .line 370
    new-instance v0, Lcom/miui/home/recents/anim/TaskViewsParams;

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/miui/home/recents/anim/TaskViewsParams;-><init>(ILcom/miui/home/recents/anim/TaskViewParamsInfo;Lcom/miui/home/recents/views/TaskView;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 369
    invoke-virtual {p1, v0}, Lcom/miui/home/recents/anim/TaskViewsElement;->animTo(Ljava/lang/Object;)V

    .line 377
    :cond_2
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {p0}, Lcom/miui/home/recents/anim/StateManager;->access$getIdleState$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/StateManager$IdleState;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/home/recents/anim/StateManager;->access$gotoState(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/State;)V

    goto/16 :goto_2

    .line 357
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/StateManager$HomeState;->onGestureHomeMove(Lcom/miui/home/recents/event/Event;)V

    goto/16 :goto_2

    .line 351
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/StateManager$HomeState;->cancelWindowElementAnimIfRunning(Lcom/miui/home/recents/event/Event;)V

    .line 352
    iget-object p1, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {p1}, Lcom/miui/home/recents/anim/StateManager;->access$getTaskViewsElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/TaskViewsElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/TaskViewsElement;->onGestureHomeDown()V

    .line 353
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {p0}, Lcom/miui/home/recents/anim/StateManager;->access$getShortcutMenuLayerElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->removeExitOverviewEndListener()V

    goto/16 :goto_2

    .line 400
    :pswitch_5
    iget-object p1, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {p1}, Lcom/miui/home/recents/anim/StateManager;->access$getShortcutMenuLayerElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;

    move-result-object p1

    sget-object v0, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->Companion:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;->getHomeStateParams()Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->animTo(Ljava/lang/Object;)V

    .line 401
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {p0}, Lcom/miui/home/recents/anim/StateManager;->access$getIdleState$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/StateManager$IdleState;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/home/recents/anim/StateManager;->access$gotoState(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/State;)V

    goto/16 :goto_2

    .line 330
    :pswitch_6
    invoke-virtual {p1}, Lcom/miui/home/recents/event/Event;->getInfo()Lcom/miui/home/recents/event/EventInfo;

    move-result-object v0

    const-string v5, "null cannot be cast to non-null type com.miui.home.recents.event.FolderScrollEventInfo"

    invoke-static {v0, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/miui/home/recents/event/FolderScrollEventInfo;

    .line 331
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v5

    .line 332
    iget-object v6, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v6}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/miui/home/recents/anim/WindowElement;->isRunning()Z

    move-result v6

    if-ne v6, v2, :cond_3

    goto :goto_0

    :cond_3
    move v2, v3

    :goto_0
    if-eqz v2, :cond_5

    .line 333
    invoke-virtual {v0}, Lcom/miui/home/recents/event/FolderScrollEventInfo;->getFolderGridViewTop()I

    move-result v2

    .line 334
    invoke-virtual {v0}, Lcom/miui/home/recents/event/FolderScrollEventInfo;->getFolderGridViewBottom()I

    move-result v0

    .line 332
    invoke-direct {p0, v2, v0}, Lcom/miui/home/recents/anim/StateManager$HomeState;->isViewShowComplete(II)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v5, :cond_5

    .line 334
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WindowElement;->getLauncherTargetView()Landroid/view/View;

    move-result-object v4

    :cond_4
    invoke-virtual {v5, v4}, Lcom/miui/home/launcher/Launcher;->isViewInFolder(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 335
    iget-object v2, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/miui/home/recents/event/Event;->getType()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/miui/home/recents/anim/StateManager;->cancelAll$default(Lcom/miui/home/recents/anim/StateManager;Ljava/lang/String;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 337
    :cond_5
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/miui/home/recents/event/Event;->getType()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " EVENT_FOLDER_SCROLL."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/StateManager;->cancelOldList(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 342
    :pswitch_7
    invoke-virtual {p1}, Lcom/miui/home/recents/event/Event;->getInfo()Lcom/miui/home/recents/event/EventInfo;

    move-result-object v0

    const-string v4, "null cannot be cast to non-null type com.miui.home.recents.event.DrawerScrollInfo"

    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/miui/home/recents/event/DrawerScrollInfo;

    .line 343
    iget-object v4, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v4}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/miui/home/recents/anim/WindowElement;->isRunning()Z

    move-result v4

    if-ne v4, v2, :cond_6

    goto :goto_1

    :cond_6
    move v2, v3

    :goto_1
    if-eqz v2, :cond_8

    invoke-virtual {v0}, Lcom/miui/home/recents/event/DrawerScrollInfo;->getForceStop()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v0}, Lcom/miui/home/recents/event/DrawerScrollInfo;->getTop()I

    move-result v2

    invoke-virtual {v0}, Lcom/miui/home/recents/event/DrawerScrollInfo;->getBottom()I

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/miui/home/recents/anim/StateManager$HomeState;->isViewShowComplete(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 344
    :cond_7
    iget-object v2, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/miui/home/recents/event/Event;->getType()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/miui/home/recents/anim/StateManager;->cancelAll$default(Lcom/miui/home/recents/anim/StateManager;Ljava/lang/String;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;ILjava/lang/Object;)V

    goto :goto_2

    .line 346
    :cond_8
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/miui/home/recents/event/Event;->getType()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " EVENT_DRAWER_SCROLL."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/StateManager;->cancelOldList(Ljava/lang/String;)V

    goto :goto_2

    .line 312
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/StateManager$HomeState;->cancelWindowElementAnimIfRunning(Lcom/miui/home/recents/event/Event;)V

    .line 313
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager$HomeState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {p0}, Lcom/miui/home/recents/anim/StateManager;->access$getShortcutMenuLayerElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->skipAnimToEnd()V

    goto :goto_2

    .line 326
    :cond_9
    :pswitch_9
    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/StateManager$HomeState;->cancelWindowElementAnimIfRunning(Lcom/miui/home/recents/event/Event;)V

    goto :goto_2

    .line 308
    :cond_a
    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/StateManager$HomeState;->onWidgetClick(Lcom/miui/home/recents/event/Event;)V

    goto :goto_2

    .line 303
    :cond_b
    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/StateManager$HomeState;->onIconClick(Lcom/miui/home/recents/event/Event;)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7d2
        :pswitch_8
        :pswitch_7
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7d6
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_6
        :pswitch_9
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x17d5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
