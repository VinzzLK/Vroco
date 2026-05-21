.class final Lcom/miui/home/recents/anim/StateManager$RecentState;
.super Lcom/miui/home/recents/anim/State;
.source "StateManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/anim/StateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RecentState"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStateManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StateManager.kt\ncom/miui/home/recents/anim/StateManager$RecentState\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1689:1\n1#2:1690\n*E\n"
.end annotation


# instance fields
.field private final stateName:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/home/recents/anim/StateManager;


# direct methods
.method public static synthetic $r8$lambda$EFGmfCQj_XyQHffCwIdgt-B5C2o(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/event/PairTaskClickEventInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/recents/anim/StateManager$RecentState;->handleEvent$lambda-5$lambda-4(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/event/PairTaskClickEventInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NdF4vR5QO6b_CI1RMEi4HSjq-v0(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/event/PairTaskClickEventInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/recents/anim/StateManager$RecentState;->handleEvent$lambda-5(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/event/PairTaskClickEventInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cZRlWCipTBolMlWXz0zZCsNd5dI(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/event/TaskClickEventInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/recents/anim/StateManager$RecentState;->handleEvent$lambda-3$lambda-2(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/event/TaskClickEventInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ci4XPmlnSOhe9QTktbw5ThYrcV4(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/event/TaskClickEventInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/recents/anim/StateManager$RecentState;->handleEvent$lambda-1$lambda-0(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/event/TaskClickEventInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$htoq2h8hmQKJQb7660vFU-sJwzo(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/event/TaskClickEventInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/recents/anim/StateManager$RecentState;->handleEvent$lambda-3(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/event/TaskClickEventInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iqXJM83-q5LlB_ZV3LuQ8u5NpOM(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/event/TaskClickEventInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/recents/anim/StateManager$RecentState;->handleEvent$lambda-1(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/event/TaskClickEventInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/recents/anim/StateManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 915
    iput-object p1, p0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-direct {p0}, Lcom/miui/home/recents/anim/State;-><init>()V

    const-string p1, "RecentState"

    .line 916
    iput-object p1, p0, Lcom/miui/home/recents/anim/StateManager$RecentState;->stateName:Ljava/lang/String;

    return-void
.end method

.method private static final handleEvent$lambda-1(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/event/TaskClickEventInfo;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 937
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/anim/StateManager$RecentState$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/anim/StateManager$RecentState$$ExternalSyntheticLambda5;-><init>(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/event/TaskClickEventInfo;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final handleEvent$lambda-1$lambda-0(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/event/TaskClickEventInfo;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 938
    invoke-static {p0, v0, v1, v2}, Lcom/miui/home/recents/anim/StateManager;->createWindowElement$default(Lcom/miui/home/recents/anim/StateManager;ZILjava/lang/Object;)V

    .line 939
    invoke-static {p0}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/recents/event/TaskClickEventInfo;->isInBackground()Z

    move-result v0

    invoke-virtual {p1}, Lcom/miui/home/recents/event/TaskClickEventInfo;->getTaskView()Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/recents/anim/WindowElement;->startActivityFromRecents(ZLcom/miui/home/recents/views/TaskView;)V

    :cond_0
    return-void
.end method

.method private static final handleEvent$lambda-3(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/event/TaskClickEventInfo;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 947
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/anim/StateManager$RecentState$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/anim/StateManager$RecentState$$ExternalSyntheticLambda4;-><init>(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/event/TaskClickEventInfo;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final handleEvent$lambda-3$lambda-2(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/event/TaskClickEventInfo;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 948
    invoke-static {p0, v0, v1, v2}, Lcom/miui/home/recents/anim/StateManager;->createWindowElement$default(Lcom/miui/home/recents/anim/StateManager;ZILjava/lang/Object;)V

    .line 949
    invoke-static {p0}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 950
    invoke-virtual {p1}, Lcom/miui/home/recents/event/TaskClickEventInfo;->isInBackground()Z

    move-result v0

    .line 951
    invoke-virtual {p1}, Lcom/miui/home/recents/event/TaskClickEventInfo;->getTaskView()Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    .line 949
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/recents/anim/WindowElement;->startActivityFromRecents(ZLcom/miui/home/recents/views/TaskView;)V

    :cond_0
    return-void
.end method

.method private static final handleEvent$lambda-5(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/event/PairTaskClickEventInfo;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 998
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/anim/StateManager$RecentState$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/anim/StateManager$RecentState$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/event/PairTaskClickEventInfo;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final handleEvent$lambda-5$lambda-4(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/event/PairTaskClickEventInfo;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 999
    invoke-static {p0, v0, v1, v2}, Lcom/miui/home/recents/anim/StateManager;->createWindowElement$default(Lcom/miui/home/recents/anim/StateManager;ZILjava/lang/Object;)V

    .line 1000
    invoke-static {p0}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/WindowElement;->clickPairTask(Lcom/miui/home/recents/event/PairTaskClickEventInfo;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getStateName()Ljava/lang/String;
    .locals 0

    .line 916
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager$RecentState;->stateName:Ljava/lang/String;

    return-object p0
.end method

.method public handleEvent(Lcom/miui/home/recents/event/Event;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "event"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 919
    invoke-super/range {p0 .. p1}, Lcom/miui/home/recents/anim/State;->handleEvent(Lcom/miui/home/recents/event/Event;)V

    .line 920
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/event/Event;->getType()I

    move-result v2

    const/16 v3, 0x3e9

    const-string v4, " cancel."

    if-eq v2, v3, :cond_24

    const/16 v3, 0x1b59

    if-eq v2, v3, :cond_23

    const/16 v3, 0x1b66

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v3, :cond_21

    packed-switch v2, :pswitch_data_0

    const-string v3, "handleEvent: launch task repeatedly"

    const-string v8, "AnimStateManager"

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    goto/16 :goto_10

    .line 976
    :pswitch_0
    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/StateManager;->initWindowElement()V

    .line 977
    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v2}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/event/Event;->getInfo()Lcom/miui/home/recents/event/EventInfo;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type com.miui.home.recents.event.PairTaskLaunchEventInfo"

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/miui/home/recents/event/PairTaskLaunchEventInfo;

    invoke-virtual {v2, v1}, Lcom/miui/home/recents/anim/WindowElement;->launchPairTask(Lcom/miui/home/recents/event/PairTaskLaunchEventInfo;)V

    .line 978
    :cond_0
    iget-object v0, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getIdleState$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/StateManager$IdleState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/anim/StateManager;->access$gotoState(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/State;)V

    goto/16 :goto_10

    .line 970
    :pswitch_1
    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/StateManager;->initWindowElement()V

    .line 971
    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v2}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/event/Event;->getInfo()Lcom/miui/home/recents/event/EventInfo;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type com.miui.home.recents.event.TaskLaunchEventInfo"

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/miui/home/recents/event/TaskLaunchEventInfo;

    invoke-virtual {v2, v1}, Lcom/miui/home/recents/anim/WindowElement;->launchTask(Lcom/miui/home/recents/event/TaskLaunchEventInfo;)V

    .line 972
    :cond_1
    iget-object v0, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getIdleState$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/StateManager$IdleState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/anim/StateManager;->access$gotoState(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/State;)V

    goto/16 :goto_10

    .line 1090
    :pswitch_2
    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/event/Event;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/miui/home/recents/anim/StateManager;->cancelAll$default(Lcom/miui/home/recents/anim/StateManager;Ljava/lang/String;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;ILjava/lang/Object;)V

    goto/16 :goto_10

    .line 1021
    :pswitch_3
    iget-object v8, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/event/Event;->getType()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lcom/miui/home/recents/anim/StateManager;->cancelAll$default(Lcom/miui/home/recents/anim/StateManager;Ljava/lang/String;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;ILjava/lang/Object;)V

    .line 1022
    iget-object v0, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getHomeState$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/StateManager$HomeState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/anim/StateManager;->access$gotoState(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/State;)V

    goto/16 :goto_10

    .line 982
    :pswitch_4
    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v2}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/WindowElement;->isRecentOpenAnimRunning()Z

    move-result v2

    if-ne v2, v7, :cond_2

    move v2, v7

    goto :goto_0

    :cond_2
    move v2, v6

    :goto_0
    if-eqz v2, :cond_3

    .line 983
    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 986
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/event/Event;->getInfo()Lcom/miui/home/recents/event/EventInfo;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.miui.home.recents.event.PairTaskClickEventInfo"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/miui/home/recents/event/PairTaskClickEventInfo;

    .line 987
    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v2}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/WindowElement;->isReusefulAnimRunning()Z

    move-result v2

    if-ne v2, v7, :cond_4

    move v2, v7

    goto :goto_1

    :cond_4
    move v2, v6

    :goto_1
    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v2}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/miui/home/recents/event/PairTaskClickEventInfo;->getTaskView()Lcom/miui/home/recents/views/TaskView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/home/recents/anim/WindowElement;->isSameElement(Landroid/view/View;)Z

    move-result v2

    if-ne v2, v7, :cond_5

    move v2, v7

    goto :goto_2

    :cond_5
    move v2, v6

    :goto_2
    if-eqz v2, :cond_6

    move v2, v7

    goto :goto_3

    :cond_6
    move v2, v6

    .line 988
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handle event MultiTask click needUpdateAnim = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_9

    .line 990
    sget-boolean v2, Lcom/android/systemui/shared/recents/utilities/Utilities;->sIsLargeScreenMode:Z

    if-eqz v2, :cond_8

    .line 991
    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v2}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v2

    if-nez v2, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v2, v7}, Lcom/miui/home/recents/anim/WindowElement;->setSplitAnim(Z)V

    .line 993
    :cond_8
    :goto_4
    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-virtual {v1}, Lcom/miui/home/recents/event/PairTaskClickEventInfo;->getTaskView()Lcom/miui/home/recents/views/TaskView;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/miui/home/recents/anim/StateManager;->access$animToFullScreen(Lcom/miui/home/recents/anim/StateManager;Landroid/view/View;)V

    goto :goto_6

    .line 995
    :cond_9
    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v2}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/WindowElement;->mainAnimNoFinishClear()Z

    move-result v2

    if-ne v2, v7, :cond_a

    move v2, v7

    goto :goto_5

    :cond_a
    move v2, v6

    :goto_5
    if-eqz v2, :cond_b

    .line 996
    iget-object v8, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    new-instance v10, Lcom/miui/home/recents/anim/StateManager$RecentState$$ExternalSyntheticLambda0;

    invoke-direct {v10, v8, v1}, Lcom/miui/home/recents/anim/StateManager$RecentState$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/event/PairTaskClickEventInfo;)V

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    const-string v9, "TaskView click another TaskView."

    invoke-static/range {v8 .. v13}, Lcom/miui/home/recents/anim/StateManager;->cancelAll$default(Lcom/miui/home/recents/anim/StateManager;Ljava/lang/String;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;ILjava/lang/Object;)V

    goto :goto_6

    .line 1004
    :cond_b
    iget-object v14, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x6

    const/16 v19, 0x0

    const-string v15, "TaskView click another TaskView."

    invoke-static/range {v14 .. v19}, Lcom/miui/home/recents/anim/StateManager;->cancelAll$default(Lcom/miui/home/recents/anim/StateManager;Ljava/lang/String;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;ILjava/lang/Object;)V

    .line 1005
    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v2, v6, v7, v5}, Lcom/miui/home/recents/anim/StateManager;->createWindowElement$default(Lcom/miui/home/recents/anim/StateManager;ZILjava/lang/Object;)V

    .line 1006
    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v2}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v2, v1}, Lcom/miui/home/recents/anim/WindowElement;->clickPairTask(Lcom/miui/home/recents/event/PairTaskClickEventInfo;)V

    .line 1009
    :cond_c
    :goto_6
    iget-object v0, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getAppState$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/StateManager$AppState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/anim/StateManager;->access$gotoState(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/State;)V

    goto/16 :goto_10

    .line 923
    :pswitch_5
    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v2}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/WindowElement;->isRecentOpenAnimRunning()Z

    move-result v2

    if-ne v2, v7, :cond_d

    move v2, v7

    goto :goto_7

    :cond_d
    move v2, v6

    :goto_7
    if-eqz v2, :cond_e

    .line 924
    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 927
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/event/Event;->getInfo()Lcom/miui/home/recents/event/EventInfo;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.miui.home.recents.event.TaskClickEventInfo"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/miui/home/recents/event/TaskClickEventInfo;

    .line 928
    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v2}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/WindowElement;->isReusefulAnimRunning()Z

    move-result v2

    if-ne v2, v7, :cond_f

    move v2, v7

    goto :goto_8

    :cond_f
    move v2, v6

    :goto_8
    if-eqz v2, :cond_11

    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v2}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {v1}, Lcom/miui/home/recents/event/TaskClickEventInfo;->getTaskView()Lcom/miui/home/recents/views/TaskView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/home/recents/anim/WindowElement;->isSameElement(Landroid/view/View;)Z

    move-result v2

    if-ne v2, v7, :cond_10

    move v2, v7

    goto :goto_9

    :cond_10
    move v2, v6

    :goto_9
    if-eqz v2, :cond_11

    move v2, v7

    goto :goto_a

    :cond_11
    move v2, v6

    .line 929
    :goto_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handle event Task needUpdateAnim = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", windowElement="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v4}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mainAnimNoFinishClear="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v4}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Lcom/miui/home/recents/anim/WindowElement;->mainAnimNoFinishClear()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_b

    :cond_12
    move-object v4, v5

    :goto_b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_13

    .line 931
    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-virtual {v1}, Lcom/miui/home/recents/event/TaskClickEventInfo;->getTaskView()Lcom/miui/home/recents/views/TaskView;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/miui/home/recents/anim/StateManager;->access$animToFullScreen(Lcom/miui/home/recents/anim/StateManager;Landroid/view/View;)V

    goto/16 :goto_e

    .line 934
    :cond_13
    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v2}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/WindowElement;->mainAnimNoFinishClear()Z

    move-result v2

    if-ne v2, v7, :cond_14

    move v2, v7

    goto :goto_c

    :cond_14
    move v2, v6

    :goto_c
    if-eqz v2, :cond_15

    .line 935
    iget-object v8, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    new-instance v10, Lcom/miui/home/recents/anim/StateManager$RecentState$$ExternalSyntheticLambda2;

    invoke-direct {v10, v8, v1}, Lcom/miui/home/recents/anim/StateManager$RecentState$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/event/TaskClickEventInfo;)V

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    const-string v9, "TaskView click another TaskView."

    invoke-static/range {v8 .. v13}, Lcom/miui/home/recents/anim/StateManager;->cancelAll$default(Lcom/miui/home/recents/anim/StateManager;Ljava/lang/String;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;ILjava/lang/Object;)V

    goto :goto_d

    .line 943
    :cond_15
    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v2}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 944
    iget-object v8, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    const/4 v10, 0x0

    new-instance v11, Lcom/miui/home/recents/anim/StateManager$RecentState$$ExternalSyntheticLambda1;

    invoke-direct {v11, v8, v1}, Lcom/miui/home/recents/anim/StateManager$RecentState$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/event/TaskClickEventInfo;)V

    const/4 v12, 0x2

    const/4 v13, 0x0

    const-string v9, "TaskView click another TaskView."

    invoke-static/range {v8 .. v13}, Lcom/miui/home/recents/anim/StateManager;->cancelAll$default(Lcom/miui/home/recents/anim/StateManager;Ljava/lang/String;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;ILjava/lang/Object;)V

    goto :goto_d

    .line 956
    :cond_16
    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v2, v6, v7, v5}, Lcom/miui/home/recents/anim/StateManager;->createWindowElement$default(Lcom/miui/home/recents/anim/StateManager;ZILjava/lang/Object;)V

    .line 957
    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v2}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 958
    invoke-virtual {v1}, Lcom/miui/home/recents/event/TaskClickEventInfo;->isInBackground()Z

    move-result v3

    .line 959
    invoke-virtual {v1}, Lcom/miui/home/recents/event/TaskClickEventInfo;->getTaskView()Lcom/miui/home/recents/views/TaskView;

    move-result-object v1

    .line 957
    invoke-virtual {v2, v3, v1}, Lcom/miui/home/recents/anim/WindowElement;->startActivityFromRecents(ZLcom/miui/home/recents/views/TaskView;)V

    .line 963
    :cond_17
    :goto_d
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getShortcutMenuLayerElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;

    move-result-object v1

    sget-object v2, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->Companion:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;->getAppStateParams()Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->animTo(Ljava/lang/Object;)V

    .line 964
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getWallpaperElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WallpaperElement;

    move-result-object v1

    sget-object v2, Lcom/miui/home/recents/anim/WallpaperParam;->Companion:Lcom/miui/home/recents/anim/WallpaperParam$Companion;

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/WallpaperParam$Companion;->getAppStateParams()Lcom/miui/home/recents/anim/WallpaperParam;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/anim/WallpaperElement;->animTo(Ljava/lang/Object;)V

    .line 966
    :goto_e
    iget-object v0, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getAppState$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/StateManager$AppState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/anim/StateManager;->access$gotoState(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/State;)V

    goto/16 :goto_10

    .line 1053
    :pswitch_6
    check-cast v1, Lcom/miui/home/recents/event/GestureRecentUpEvent;

    .line 1054
    invoke-virtual {v1}, Lcom/miui/home/recents/event/GestureRecentUpEvent;->getToHome()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1055
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getShortcutMenuLayerElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;

    move-result-object v1

    sget-object v2, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->Companion:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;->getHomeStateParams()Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->animTo(Ljava/lang/Object;)V

    .line 1056
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1057
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getWallpaperElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WallpaperElement;

    move-result-object v1

    sget-object v2, Lcom/miui/home/recents/anim/WallpaperParam;->Companion:Lcom/miui/home/recents/anim/WallpaperParam$Companion;

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/WallpaperParam$Companion;->getHomeStateParams()Lcom/miui/home/recents/anim/WallpaperParam;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/anim/WallpaperElement;->animTo(Ljava/lang/Object;)V

    .line 1059
    :cond_18
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getRecentBlurViewElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/RecentBlurViewElement;

    move-result-object v1

    sget-object v2, Lcom/miui/home/recents/anim/RecentBlurParams;->Companion:Lcom/miui/home/recents/anim/RecentBlurParams$Companion;

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/RecentBlurParams$Companion;->getHomeStateParams()Lcom/miui/home/recents/anim/RecentBlurParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/anim/RecentBlurViewElement;->animTo(Ljava/lang/Object;)V

    goto/16 :goto_f

    .line 1060
    :cond_19
    invoke-virtual {v1}, Lcom/miui/home/recents/event/GestureRecentUpEvent;->isFromHold()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1061
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getTaskViewsElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/TaskViewsElement;

    move-result-object v1

    new-instance v8, Lcom/miui/home/recents/anim/TaskViewsParams;

    const/16 v3, 0xe

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/miui/home/recents/anim/TaskViewsParams;-><init>(ILcom/miui/home/recents/anim/TaskViewParamsInfo;Lcom/miui/home/recents/views/TaskView;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v8}, Lcom/miui/home/recents/anim/TaskViewsElement;->animTo(Ljava/lang/Object;)V

    .line 1062
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getTaskViewsElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/TaskViewsElement;

    move-result-object v1

    new-instance v8, Lcom/miui/home/recents/anim/TaskViewsParams;

    const/16 v3, 0xa

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/miui/home/recents/anim/TaskViewsParams;-><init>(ILcom/miui/home/recents/anim/TaskViewParamsInfo;Lcom/miui/home/recents/views/TaskView;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v8}, Lcom/miui/home/recents/anim/TaskViewsElement;->animTo(Ljava/lang/Object;)V

    .line 1063
    sget-boolean v1, Lcom/miui/home/launcher/Launcher;->IS_RECENTS_WINDOW:Z

    if-nez v1, :cond_1a

    .line 1064
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getShortcutMenuLayerElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;

    move-result-object v1

    sget-object v2, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->Companion:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;->getRecentStateParams()Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->animTo(Ljava/lang/Object;)V

    .line 1066
    :cond_1a
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getWallpaperElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WallpaperElement;

    move-result-object v1

    sget-object v2, Lcom/miui/home/recents/anim/WallpaperParam;->Companion:Lcom/miui/home/recents/anim/WallpaperParam$Companion;

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/WallpaperParam$Companion;->getRecentStateParams()Lcom/miui/home/recents/anim/WallpaperParam;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/anim/WallpaperElement;->animTo(Ljava/lang/Object;)V

    .line 1067
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getRecentBlurViewElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/RecentBlurViewElement;

    move-result-object v1

    sget-object v2, Lcom/miui/home/recents/anim/RecentBlurParams;->Companion:Lcom/miui/home/recents/anim/RecentBlurParams$Companion;

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/RecentBlurParams$Companion;->getRecentStateParams()Lcom/miui/home/recents/anim/RecentBlurParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/anim/RecentBlurViewElement;->animTo(Ljava/lang/Object;)V

    goto :goto_f

    .line 1069
    :cond_1b
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getTaskViewsElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/TaskViewsElement;

    move-result-object v1

    new-instance v8, Lcom/miui/home/recents/anim/TaskViewsParams;

    const/16 v3, 0xa

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/miui/home/recents/anim/TaskViewsParams;-><init>(ILcom/miui/home/recents/anim/TaskViewParamsInfo;Lcom/miui/home/recents/views/TaskView;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v8}, Lcom/miui/home/recents/anim/TaskViewsElement;->animTo(Ljava/lang/Object;)V

    .line 1070
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1071
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getShortcutMenuLayerElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;

    move-result-object v1

    sget-object v2, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->Companion:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;->getRecentStateParams()Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->animTo(Ljava/lang/Object;)V

    .line 1072
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getRecentBlurViewElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/RecentBlurViewElement;

    move-result-object v1

    sget-object v2, Lcom/miui/home/recents/anim/RecentBlurParams;->Companion:Lcom/miui/home/recents/anim/RecentBlurParams$Companion;

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/RecentBlurParams$Companion;->getRecentStateParams()Lcom/miui/home/recents/anim/RecentBlurParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/anim/RecentBlurViewElement;->animTo(Ljava/lang/Object;)V

    .line 1076
    :cond_1c
    :goto_f
    iget-object v0, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getIdleState$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/StateManager$IdleState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/anim/StateManager;->access$gotoState(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/State;)V

    goto/16 :goto_10

    .line 1030
    :pswitch_7
    move-object v2, v1

    check-cast v2, Lcom/miui/home/recents/event/GestureRecentMoveEvent;

    .line 1031
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/event/Event;->getInfo()Lcom/miui/home/recents/event/EventInfo;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type com.miui.home.recents.event.GestureRecentMoveEventInfo"

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/miui/home/recents/event/GestureRecentMoveEventInfo;

    .line 1032
    invoke-virtual {v2}, Lcom/miui/home/recents/event/GestureRecentMoveEvent;->getMode()I

    move-result v2

    if-eq v2, v7, :cond_1f

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1e

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1d

    goto/16 :goto_10

    .line 1045
    :cond_1d
    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v2}, Lcom/miui/home/recents/anim/StateManager;->access$getShortcutMenuLayerElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;

    move-result-object v2

    sget-object v3, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->Companion:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;

    invoke-virtual {v1}, Lcom/miui/home/recents/event/GestureRecentMoveEventInfo;->getPer()F

    move-result v1

    invoke-virtual {v3, v1}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;->getRecentExitHoldStateParams(F)Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->animTo(Ljava/lang/Object;)V

    .line 1046
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getTaskViewsElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/TaskViewsElement;

    move-result-object v1

    new-instance v8, Lcom/miui/home/recents/anim/TaskViewsParams;

    const/16 v3, 0xf

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/miui/home/recents/anim/TaskViewsParams;-><init>(ILcom/miui/home/recents/anim/TaskViewParamsInfo;Lcom/miui/home/recents/views/TaskView;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v8}, Lcom/miui/home/recents/anim/TaskViewsElement;->animTo(Ljava/lang/Object;)V

    .line 1047
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getWallpaperElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WallpaperElement;

    move-result-object v1

    sget-object v2, Lcom/miui/home/recents/anim/WallpaperParam;->Companion:Lcom/miui/home/recents/anim/WallpaperParam$Companion;

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/WallpaperParam$Companion;->getRecentStateParams()Lcom/miui/home/recents/anim/WallpaperParam;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/anim/WallpaperElement;->animTo(Ljava/lang/Object;)V

    .line 1048
    iget-object v0, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getRecentBlurViewElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/RecentBlurViewElement;

    move-result-object v0

    sget-object v1, Lcom/miui/home/recents/anim/RecentBlurParams;->Companion:Lcom/miui/home/recents/anim/RecentBlurParams$Companion;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/RecentBlurParams$Companion;->getRecentStateParams()Lcom/miui/home/recents/anim/RecentBlurParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/RecentBlurViewElement;->animTo(Ljava/lang/Object;)V

    goto/16 :goto_10

    .line 1039
    :cond_1e
    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v2}, Lcom/miui/home/recents/anim/StateManager;->access$getShortcutMenuLayerElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;

    move-result-object v2

    sget-object v3, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->Companion:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;

    invoke-virtual {v1}, Lcom/miui/home/recents/event/GestureRecentMoveEventInfo;->getPer()F

    move-result v1

    invoke-virtual {v3, v1}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;->getRecentEnterHoldStateParams(F)Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->animTo(Ljava/lang/Object;)V

    .line 1040
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getTaskViewsElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/TaskViewsElement;

    move-result-object v1

    new-instance v8, Lcom/miui/home/recents/anim/TaskViewsParams;

    const/16 v3, 0xd

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/miui/home/recents/anim/TaskViewsParams;-><init>(ILcom/miui/home/recents/anim/TaskViewParamsInfo;Lcom/miui/home/recents/views/TaskView;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, v8}, Lcom/miui/home/recents/anim/TaskViewsElement;->animTo(Ljava/lang/Object;)V

    .line 1041
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getWallpaperElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WallpaperElement;

    move-result-object v1

    sget-object v2, Lcom/miui/home/recents/anim/WallpaperParam;->Companion:Lcom/miui/home/recents/anim/WallpaperParam$Companion;

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/WallpaperParam$Companion;->getHomeStateParams()Lcom/miui/home/recents/anim/WallpaperParam;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/anim/WallpaperElement;->animTo(Ljava/lang/Object;)V

    .line 1042
    iget-object v0, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getRecentBlurViewElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/RecentBlurViewElement;

    move-result-object v0

    sget-object v1, Lcom/miui/home/recents/anim/RecentBlurParams;->Companion:Lcom/miui/home/recents/anim/RecentBlurParams$Companion;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/RecentBlurParams$Companion;->getRecentHoldParams()Lcom/miui/home/recents/anim/RecentBlurParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/RecentBlurViewElement;->animTo(Ljava/lang/Object;)V

    goto/16 :goto_10

    .line 1034
    :cond_1f
    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v2}, Lcom/miui/home/recents/anim/StateManager;->access$getTaskViewsElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/TaskViewsElement;

    move-result-object v2

    new-instance v9, Lcom/miui/home/recents/anim/TaskViewsParams;

    const/16 v4, 0x9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/miui/home/recents/anim/TaskViewsParams;-><init>(ILcom/miui/home/recents/anim/TaskViewParamsInfo;Lcom/miui/home/recents/views/TaskView;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2, v9}, Lcom/miui/home/recents/anim/TaskViewsElement;->animTo(Ljava/lang/Object;)V

    .line 1035
    sget-object v2, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->Companion:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;

    invoke-virtual {v1}, Lcom/miui/home/recents/event/GestureRecentMoveEventInfo;->getPer()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;->getRecentDragStateParams(F)Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    move-result-object v2

    if-eqz v2, :cond_20

    iget-object v3, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v3}, Lcom/miui/home/recents/anim/StateManager;->access$getShortcutMenuLayerElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->animTo(Ljava/lang/Object;)V

    .line 1036
    :cond_20
    sget-object v2, Lcom/miui/home/recents/anim/RecentBlurParams;->Companion:Lcom/miui/home/recents/anim/RecentBlurParams$Companion;

    invoke-virtual {v1}, Lcom/miui/home/recents/event/GestureRecentMoveEventInfo;->getPer()F

    move-result v1

    invoke-virtual {v2, v1}, Lcom/miui/home/recents/anim/RecentBlurParams$Companion;->getRecentDragParams(F)Lcom/miui/home/recents/anim/RecentBlurParams;

    move-result-object v1

    if-eqz v1, :cond_25

    iget-object v0, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getRecentBlurViewElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/RecentBlurViewElement;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/RecentBlurViewElement;->animTo(Ljava/lang/Object;)V

    goto/16 :goto_10

    .line 1026
    :pswitch_8
    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/event/Event;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/miui/home/recents/anim/StateManager;->cancelAll$default(Lcom/miui/home/recents/anim/StateManager;Ljava/lang/String;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;ILjava/lang/Object;)V

    goto/16 :goto_10

    .line 1013
    :cond_21
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/event/Event;->getInfo()Lcom/miui/home/recents/event/EventInfo;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type com.miui.home.recents.event.TaskLaunchForSplitEventInfo"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lcom/miui/home/recents/event/TaskLaunchForSplitEventInfo;

    .line 1014
    iget-object v8, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/event/Event;->getType()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x6

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lcom/miui/home/recents/anim/StateManager;->cancelAll$default(Lcom/miui/home/recents/anim/StateManager;Ljava/lang/String;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;ILjava/lang/Object;)V

    .line 1015
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1, v6, v7, v5}, Lcom/miui/home/recents/anim/StateManager;->createWindowElement$default(Lcom/miui/home/recents/anim/StateManager;ZILjava/lang/Object;)V

    .line 1016
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/anim/WindowElement;->launchTaskForSplitMode(Lcom/miui/home/recents/event/TaskLaunchForSplitEventInfo;)V

    .line 1017
    :cond_22
    iget-object v0, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getAppState$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/StateManager$AppState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/anim/StateManager;->access$gotoState(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/State;)V

    goto :goto_10

    .line 1080
    :cond_23
    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/event/Event;->getType()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/miui/home/recents/anim/StateManager;->cancelAll$default(Lcom/miui/home/recents/anim/StateManager;Ljava/lang/String;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;ILjava/lang/Object;)V

    .line 1081
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getRecentBlurViewElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/RecentBlurViewElement;

    move-result-object v1

    sget-object v2, Lcom/miui/home/recents/anim/RecentBlurParams;->Companion:Lcom/miui/home/recents/anim/RecentBlurParams$Companion;

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/RecentBlurParams$Companion;->getHomeStateParams()Lcom/miui/home/recents/anim/RecentBlurParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/anim/RecentBlurViewElement;->animTo(Ljava/lang/Object;)V

    .line 1082
    iget-object v0, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getIdleState$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/StateManager$IdleState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/anim/StateManager;->access$gotoState(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/State;)V

    goto :goto_10

    .line 1094
    :cond_24
    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/event/Event;->getType()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/miui/home/recents/anim/StateManager;->cancelAll$default(Lcom/miui/home/recents/anim/StateManager;Ljava/lang/String;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;ILjava/lang/Object;)V

    .line 1095
    iget-object v0, v0, Lcom/miui/home/recents/anim/StateManager$RecentState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    new-instance v1, Lcom/miui/home/recents/anim/StateManager$IdleState;

    invoke-direct {v1, v0}, Lcom/miui/home/recents/anim/StateManager$IdleState;-><init>(Lcom/miui/home/recents/anim/StateManager;)V

    invoke-static {v0, v1}, Lcom/miui/home/recents/anim/StateManager;->access$gotoState(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/State;)V

    :cond_25
    :goto_10
    return-void

    :pswitch_data_0
    .packed-switch 0x1839
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1b5d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1b68
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
