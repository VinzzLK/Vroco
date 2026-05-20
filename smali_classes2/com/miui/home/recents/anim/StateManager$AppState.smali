.class final Lcom/miui/home/recents/anim/StateManager$AppState;
.super Lcom/miui/home/recents/anim/State;
.source "StateManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/anim/StateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppState"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStateManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StateManager.kt\ncom/miui/home/recents/anim/StateManager$AppState\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1689:1\n1#2:1690\n*E\n"
.end annotation


# instance fields
.field private final stateName:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/home/recents/anim/StateManager;


# direct methods
.method public static synthetic $r8$lambda$Byd71jd9fDeQOgqEjMgEnHmNtAE(Lcom/miui/home/recents/anim/StateManager$AppState;Lcom/miui/home/recents/event/Event;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/recents/anim/StateManager$AppState;->handleEvent$lambda-1(Lcom/miui/home/recents/anim/StateManager$AppState;Lcom/miui/home/recents/event/Event;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bHKGrYA8aRJucMdRB2zyrBrWPfw(Lcom/miui/home/recents/anim/StateManager$AppState;Lcom/miui/home/recents/event/Event;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/recents/anim/StateManager$AppState;->handleEvent$lambda-1$lambda-0(Lcom/miui/home/recents/anim/StateManager$AppState;Lcom/miui/home/recents/event/Event;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/recents/anim/StateManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 616
    iput-object p1, p0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-direct {p0}, Lcom/miui/home/recents/anim/State;-><init>()V

    const-string p1, "AppState"

    .line 617
    iput-object p1, p0, Lcom/miui/home/recents/anim/StateManager$AppState;->stateName:Ljava/lang/String;

    return-void
.end method

.method private static final handleEvent$lambda-1(Lcom/miui/home/recents/anim/StateManager$AppState;Lcom/miui/home/recents/event/Event;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 626
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/anim/StateManager$AppState$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/anim/StateManager$AppState$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/recents/anim/StateManager$AppState;Lcom/miui/home/recents/event/Event;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final handleEvent$lambda-1$lambda-0(Lcom/miui/home/recents/anim/StateManager$AppState;Lcom/miui/home/recents/event/Event;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 627
    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/StateManager$AppState;->onMenuClick(Lcom/miui/home/recents/event/Event;)V

    return-void
.end method

.method private final onGestureAppMove(Lcom/miui/home/recents/event/Event;)V
    .locals 31

    move-object/from16 v0, p0

    .line 876
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/event/Event;->getInfo()Lcom/miui/home/recents/event/EventInfo;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.miui.home.recents.event.GestureAppMoveEventInfo"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;

    .line 877
    invoke-virtual {v1}, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->getTaskViewParamsInfo()Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->isQuickSwitchMode()Z

    move-result v14

    .line 879
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/WindowElement;->hasValidSurface()Z

    move-result v1

    if-ne v1, v4, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/StateManager;->isFastLaunch()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v14}, Lcom/miui/home/recents/anim/WindowElement;->isHomeGestureQuickSwitch(Z)Z

    move-result v1

    if-ne v1, v4, :cond_1

    move v3, v4

    :cond_1
    if-eqz v3, :cond_5

    .line 881
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/event/Event;->getInfo()Lcom/miui/home/recents/event/EventInfo;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;

    .line 885
    invoke-virtual {v1}, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->getTaskViewParamsInfo()Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->getRectF()Landroid/graphics/RectF;

    move-result-object v6

    .line 886
    invoke-virtual {v1}, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->getTaskViewParamsInfo()Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->getCurTaskRadius()F

    move-result v7

    .line 887
    invoke-virtual {v1}, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->getTaskViewParamsInfo()Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->getCurTaskRadius()F

    move-result v8

    .line 888
    invoke-virtual {v1}, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->getAlpha()F

    move-result v9

    .line 889
    invoke-virtual {v1}, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->getAlpha()F

    move-result v10

    .line 890
    sget-object v11, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_DRAG:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    .line 891
    invoke-virtual {v1}, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->getShowTask()Z

    move-result v13

    .line 893
    invoke-virtual {v1}, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->getCurrentDisplayRotation()I

    move-result v19

    .line 894
    invoke-virtual {v1}, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->getHomeRotation()I

    move-result v20

    .line 897
    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/StateManager;->isFastLaunch()Z

    move-result v2

    xor-int/lit8 v12, v2, 0x1

    .line 898
    invoke-virtual {v1}, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->getTaskViewParamsInfo()Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->getRunningTaskId()I

    move-result v26

    .line 899
    invoke-virtual {v1}, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->getTaskViewParamsInfo()Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;->getTouchRegion()I

    move-result v27

    .line 900
    invoke-virtual {v1}, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->getGestureHomeCalculator()Lcom/miui/home/recents/GestureHomeCalculator;

    move-result-object v21

    .line 882
    new-instance v2, Lcom/miui/home/recents/anim/RectFParams;

    move-object v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v28, 0x0

    const v29, 0x13c3800

    const/16 v30, 0x0

    invoke-direct/range {v3 .. v30}, Lcom/miui/home/recents/anim/RectFParams;-><init>(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFLcom/miui/home/recents/util/RectFSpringAnim$AnimType;ZZZLandroid/view/View;Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringUserCallBack;Lcom/miui/home/recents/util/ClipAnimationHelper;ZIILcom/miui/home/recents/GestureHomeCalculator;ZIZZIIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 902
    iget-object v3, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v3}, Lcom/miui/home/recents/anim/StateManager;->access$getTaskViewsElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/TaskViewsElement;

    move-result-object v3

    invoke-virtual {v1}, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->getTaskViewParamsInfo()Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/home/recents/anim/TaskViewsElement;->setTaskViewParamsInfo(Lcom/miui/home/recents/anim/TaskViewParamsInfo;)V

    .line 903
    invoke-virtual {v2}, Lcom/miui/home/recents/anim/RectFParams;->isQuickSwitchMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 904
    iget-object v3, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v3}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3, v2}, Lcom/miui/home/recents/anim/WindowElement;->setTo(Ljava/lang/Object;)V

    goto :goto_1

    .line 906
    :cond_3
    iget-object v3, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v3}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3, v2}, Lcom/miui/home/recents/anim/WindowElement;->animTo(Ljava/lang/Object;)V

    .line 908
    :cond_4
    :goto_1
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 909
    iget-object v0, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getRecentBlurViewElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/RecentBlurViewElement;

    move-result-object v0

    sget-object v2, Lcom/miui/home/recents/anim/RecentBlurParams;->Companion:Lcom/miui/home/recents/anim/RecentBlurParams$Companion;

    invoke-virtual {v1}, Lcom/miui/home/recents/event/GestureAppMoveEventInfo;->getPer()F

    move-result v1

    invoke-virtual {v2, v1}, Lcom/miui/home/recents/anim/RecentBlurParams$Companion;->getAppMoveStateParams(F)Lcom/miui/home/recents/anim/RecentBlurParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/RecentBlurViewElement;->animTo(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method private final onMenuClick(Lcom/miui/home/recents/event/Event;)V
    .locals 4

    .line 861
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WindowElement;->clearRunningBitmap()V

    .line 862
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/miui/home/recents/anim/StateManager;->createWindowElement$default(Lcom/miui/home/recents/anim/StateManager;ZILjava/lang/Object;)V

    .line 863
    invoke-virtual {p1}, Lcom/miui/home/recents/event/Event;->getInfo()Lcom/miui/home/recents/event/EventInfo;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.miui.home.recents.event.MenuClickEventInfo"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/miui/home/recents/event/MenuClickEventInfo;

    .line 864
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {p0}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/recents/event/MenuClickEventInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/recents/event/MenuClickEventInfo;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/recents/anim/WindowElement;->startRecentsActivity(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private final prepareElementForAppDown(Ljava/lang/String;Z)V
    .locals 1

    .line 856
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-virtual {v0, p1, p2}, Lcom/miui/home/recents/anim/StateManager;->cancelAndCreateWindowElement(Ljava/lang/String;Z)V

    .line 857
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {p0}, Lcom/miui/home/recents/anim/StateManager;->access$getAppState$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/StateManager$AppState;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/home/recents/anim/StateManager;->access$gotoState(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/State;)V

    return-void
.end method

.method static synthetic prepareElementForAppDown$default(Lcom/miui/home/recents/anim/StateManager$AppState;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 855
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/anim/StateManager$AppState;->prepareElementForAppDown(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public getStateName()Ljava/lang/String;
    .locals 0

    .line 617
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager$AppState;->stateName:Ljava/lang/String;

    return-object p0
.end method

.method public handleEvent(Lcom/miui/home/recents/event/Event;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "event"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 620
    invoke-super/range {p0 .. p1}, Lcom/miui/home/recents/anim/State;->handleEvent(Lcom/miui/home/recents/event/Event;)V

    .line 621
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/event/Event;->getType()I

    move-result v2

    const/16 v3, 0x3eb

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_36

    const/16 v3, 0x1839

    if-eq v2, v3, :cond_35

    const/16 v3, 0x189d

    if-eq v2, v3, :cond_33

    const/16 v3, 0x196a

    if-eq v2, v3, :cond_31

    const/16 v3, 0x1b67

    if-eq v2, v3, :cond_30

    const/16 v3, 0x1b6a

    if-eq v2, v3, :cond_2f

    const/16 v3, 0x1f42

    const-string v6, "AnimStateManager"

    if-eq v2, v3, :cond_2e

    const/16 v3, 0x232b

    if-eq v2, v3, :cond_2d

    const/16 v3, 0x232d

    if-eq v2, v3, :cond_29

    const/16 v3, 0x1b62

    if-eq v2, v3, :cond_28

    const/16 v3, 0x1b63

    if-eq v2, v3, :cond_27

    const-string v3, "null cannot be cast to non-null type com.miui.home.recents.event.GestureAppUpEventInfo"

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_14

    .line 770
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/event/Event;->getInfo()Lcom/miui/home/recents/event/EventInfo;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.miui.home.recents.event.GestureAppToTopWindowAminEventInfo"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/miui/home/recents/event/GestureAppToTopWindowAminEventInfo;

    .line 771
    iget-object v0, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {v1}, Lcom/miui/home/recents/event/GestureAppToTopWindowAminEventInfo;->getRectFParams()Lcom/miui/home/recents/anim/RectFParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/WindowElement;->animTo(Ljava/lang/Object;)V

    goto/16 :goto_14

    .line 707
    :pswitch_1
    iget-object v0, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getTaskViewsElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/TaskViewsElement;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/miui/home/recents/anim/TaskViewsElement;->setIsInGestureTopWindowHoldState(Z)V

    goto/16 :goto_14

    .line 702
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/event/Event;->getInfo()Lcom/miui/home/recents/event/EventInfo;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.miui.home.recents.event.EnterTopWindowHoldStateEventInfo"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/miui/home/recents/event/EnterTopWindowHoldStateEventInfo;

    .line 703
    iget-object v0, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getTaskViewsElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/TaskViewsElement;

    move-result-object v0

    invoke-virtual {v1}, Lcom/miui/home/recents/event/EnterTopWindowHoldStateEventInfo;->getParams()Lcom/miui/home/recents/anim/TaskViewsParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/TaskViewsElement;->animTo(Ljava/lang/Object;)V

    goto/16 :goto_14

    .line 795
    :pswitch_3
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    const-string v3, "startSmallWindow"

    invoke-static/range {v2 .. v7}, Lcom/miui/home/recents/anim/WindowElement;->forceStop$default(Lcom/miui/home/recents/anim/WindowElement;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Runnable;ILjava/lang/Object;)V

    .line 796
    :cond_0
    iget-object v0, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getRecentBlurViewElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/RecentBlurViewElement;

    move-result-object v0

    sget-object v1, Lcom/miui/home/recents/anim/RecentBlurParams;->Companion:Lcom/miui/home/recents/anim/RecentBlurParams$Companion;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/RecentBlurParams$Companion;->getHomeStateParams()Lcom/miui/home/recents/anim/RecentBlurParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/RecentBlurViewElement;->animTo(Ljava/lang/Object;)V

    goto/16 :goto_14

    .line 787
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/event/Event;->getInfo()Lcom/miui/home/recents/event/EventInfo;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.miui.home.recents.event.GestureAppToTopWindowEventInfo"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/miui/home/recents/event/GestureAppToTopWindowEventInfo;

    .line 788
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/GestureSoscController;->startForbidGesture()V

    .line 789
    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v2}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/miui/home/recents/event/GestureAppToTopWindowEventInfo;->getRectFParams()Lcom/miui/home/recents/anim/RectFParams;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/miui/home/recents/anim/WindowElement;->animTo(Ljava/lang/Object;)V

    .line 790
    :cond_1
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/WindowElement;->onAppToTopWindow()V

    .line 791
    :cond_2
    iget-object v0, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getRecentBlurViewElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/RecentBlurViewElement;

    move-result-object v0

    sget-object v1, Lcom/miui/home/recents/anim/RecentBlurParams;->Companion:Lcom/miui/home/recents/anim/RecentBlurParams$Companion;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/RecentBlurParams$Companion;->getHomeStateParams()Lcom/miui/home/recents/anim/RecentBlurParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/RecentBlurViewElement;->animTo(Ljava/lang/Object;)V

    goto/16 :goto_14

    .line 749
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/event/Event;->getInfo()Lcom/miui/home/recents/event/EventInfo;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/miui/home/recents/event/GestureAppUpEventInfo;

    .line 750
    invoke-virtual {v1}, Lcom/miui/home/recents/event/GestureAppUpEventInfo;->getRectFParams()Lcom/miui/home/recents/anim/RectFParams;

    move-result-object v2

    .line 751
    iget-object v3, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v3}, Lcom/miui/home/recents/anim/StateManager;->access$getShortcutMenuLayerElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;

    move-result-object v3

    sget-object v5, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->Companion:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;

    invoke-virtual {v5}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;->getRecentStateParams()Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->animTo(Ljava/lang/Object;)V

    .line 752
    iget-object v3, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v3}, Lcom/miui/home/recents/anim/StateManager;->access$getWallpaperElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WallpaperElement;

    move-result-object v3

    sget-object v5, Lcom/miui/home/recents/anim/WallpaperParam;->Companion:Lcom/miui/home/recents/anim/WallpaperParam$Companion;

    invoke-virtual {v5}, Lcom/miui/home/recents/anim/WallpaperParam$Companion;->getRecentStateParams()Lcom/miui/home/recents/anim/WallpaperParam;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/miui/home/recents/anim/WallpaperElement;->animTo(Ljava/lang/Object;)V

    .line 753
    iget-object v3, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v3}, Lcom/miui/home/recents/anim/StateManager;->access$getTaskViewsElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/TaskViewsElement;

    move-result-object v3

    invoke-virtual {v1}, Lcom/miui/home/recents/event/GestureAppUpEventInfo;->getTaskViewParams()Lcom/miui/home/recents/anim/TaskViewsParams;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/miui/home/recents/anim/TaskViewsElement;->animTo(Ljava/lang/Object;)V

    .line 754
    sget-object v1, Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;->INSTANCE:Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;

    const-wide/16 v5, 0x104

    invoke-virtual {v1, v5, v6, v4}, Lcom/miui/home/launcher/util/ScenarioRecognitionUtil;->setScenarioState(JZ)V

    .line 758
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/anim/WindowElement;->animTo(Ljava/lang/Object;)V

    .line 759
    :cond_3
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getRecentBlurViewElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/RecentBlurViewElement;

    move-result-object v1

    sget-object v2, Lcom/miui/home/recents/anim/RecentBlurParams;->Companion:Lcom/miui/home/recents/anim/RecentBlurParams$Companion;

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/RecentBlurParams$Companion;->getAppStateParams()Lcom/miui/home/recents/anim/RecentBlurParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/anim/RecentBlurViewElement;->animTo(Ljava/lang/Object;)V

    .line 760
    iget-object v0, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getRecentState$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/StateManager$RecentState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/anim/StateManager;->access$gotoState(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/State;)V

    goto/16 :goto_14

    .line 724
    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/event/Event;->getInfo()Lcom/miui/home/recents/event/EventInfo;

    move-result-object v2

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lcom/miui/home/recents/event/GestureAppUpEventInfo;

    .line 725
    invoke-virtual {v2}, Lcom/miui/home/recents/event/GestureAppUpEventInfo;->getRectFParams()Lcom/miui/home/recents/anim/RectFParams;

    move-result-object v3

    .line 726
    check-cast v1, Lcom/miui/home/recents/event/AppToAppEvent;

    invoke-virtual {v1}, Lcom/miui/home/recents/event/AppToAppEvent;->getIndexOffset()I

    move-result v1

    if-eqz v1, :cond_4

    .line 728
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getTaskViewsElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/TaskViewsElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/TaskViewsElement;->showRecents()V

    .line 730
    :cond_4
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getTaskViewsElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/TaskViewsElement;

    move-result-object v1

    invoke-virtual {v2}, Lcom/miui/home/recents/event/GestureAppUpEventInfo;->getTaskViewParams()Lcom/miui/home/recents/anim/TaskViewsParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/anim/TaskViewsElement;->animTo(Ljava/lang/Object;)V

    .line 731
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v1

    if-nez v1, :cond_5

    const-string v1, "handleEvent: onTasksAppearedFinished delay reset quick mode"

    .line 732
    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, v5}, Lcom/miui/home/recents/NavStubView;->setIsQuickSwitching(Z)V

    .line 735
    :cond_5
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1, v3}, Lcom/miui/home/recents/anim/WindowElement;->animTo(Ljava/lang/Object;)V

    .line 736
    :cond_6
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 737
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v2, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_0

    :cond_7
    move v4, v5

    .line 738
    :goto_0
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isHalfSplitMode()Z

    move-result v1

    if-eqz v1, :cond_8

    if-nez v4, :cond_8

    .line 739
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getRecentBlurViewElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/RecentBlurViewElement;

    move-result-object v1

    sget-object v2, Lcom/miui/home/recents/anim/RecentBlurParams;->Companion:Lcom/miui/home/recents/anim/RecentBlurParams$Companion;

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/RecentBlurParams$Companion;->getHomeStateParams()Lcom/miui/home/recents/anim/RecentBlurParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/anim/RecentBlurViewElement;->animTo(Ljava/lang/Object;)V

    goto :goto_1

    .line 741
    :cond_8
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getRecentBlurViewElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/RecentBlurViewElement;

    move-result-object v1

    sget-object v2, Lcom/miui/home/recents/anim/RecentBlurParams;->Companion:Lcom/miui/home/recents/anim/RecentBlurParams$Companion;

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/RecentBlurParams$Companion;->getAppStateParams()Lcom/miui/home/recents/anim/RecentBlurParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/anim/RecentBlurViewElement;->animTo(Ljava/lang/Object;)V

    .line 744
    :cond_9
    :goto_1
    iget-object v0, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getAppState$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/StateManager$AppState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/anim/StateManager;->access$gotoState(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/State;)V

    goto/16 :goto_14

    .line 712
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/event/Event;->getInfo()Lcom/miui/home/recents/event/EventInfo;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/miui/home/recents/event/GestureAppUpEventInfo;

    .line 713
    invoke-virtual {v1}, Lcom/miui/home/recents/event/GestureAppUpEventInfo;->getRectFParams()Lcom/miui/home/recents/anim/RectFParams;

    move-result-object v2

    .line 714
    iget-object v3, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v3}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3, v2}, Lcom/miui/home/recents/anim/WindowElement;->animTo(Ljava/lang/Object;)V

    .line 715
    :cond_a
    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v2}, Lcom/miui/home/recents/anim/StateManager;->access$getTaskViewsElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/TaskViewsElement;

    move-result-object v2

    invoke-virtual {v1}, Lcom/miui/home/recents/event/GestureAppUpEventInfo;->getTaskViewParams()Lcom/miui/home/recents/anim/TaskViewsParams;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/miui/home/recents/anim/TaskViewsElement;->animTo(Ljava/lang/Object;)V

    .line 716
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getShortcutMenuLayerElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;

    move-result-object v1

    sget-object v2, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->Companion:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;->getHomeStateParams()Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->animTo(Ljava/lang/Object;)V

    .line 717
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getWallpaperElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WallpaperElement;

    move-result-object v1

    sget-object v2, Lcom/miui/home/recents/anim/WallpaperParam;->Companion:Lcom/miui/home/recents/anim/WallpaperParam$Companion;

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/WallpaperParam$Companion;->getHomeStateParams()Lcom/miui/home/recents/anim/WallpaperParam;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/anim/WallpaperElement;->animTo(Ljava/lang/Object;)V

    .line 718
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getRecentBlurViewElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/RecentBlurViewElement;

    move-result-object v1

    sget-object v2, Lcom/miui/home/recents/anim/RecentBlurParams;->Companion:Lcom/miui/home/recents/anim/RecentBlurParams$Companion;

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/RecentBlurParams$Companion;->getHomeStateParams()Lcom/miui/home/recents/anim/RecentBlurParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/anim/RecentBlurViewElement;->animTo(Ljava/lang/Object;)V

    .line 719
    iget-object v0, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getHomeState$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/StateManager$HomeState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/anim/StateManager;->access$gotoState(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/State;)V

    goto/16 :goto_14

    .line 698
    :pswitch_8
    invoke-direct/range {p0 .. p1}, Lcom/miui/home/recents/anim/StateManager$AppState;->onGestureAppMove(Lcom/miui/home/recents/event/Event;)V

    goto/16 :goto_14

    .line 690
    :pswitch_9
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getShortcutMenuLayerElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->removeExitOverviewEndListener()V

    .line 691
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result v1

    if-nez v1, :cond_b

    .line 692
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getShortcutMenuLayerElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;

    move-result-object v1

    sget-object v2, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->Companion:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;->getAppStateParams()Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->animTo(Ljava/lang/Object;)V

    .line 694
    :cond_b
    iget-object v0, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getTaskViewsElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/TaskViewsElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/TaskViewsElement;->showRecents()V

    goto/16 :goto_14

    .line 638
    :pswitch_a
    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v2}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_e

    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v2}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/WindowElement;->getFloatingIcon()Lcom/miui/home/recents/FloatingIconInterface;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/home/recents/views/FloatingIconView2;

    if-eqz v2, :cond_e

    .line 639
    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v2}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/WindowElement;->getFloatingIcon()Lcom/miui/home/recents/FloatingIconInterface;

    move-result-object v2

    goto :goto_2

    :cond_c
    move-object v2, v3

    :goto_2
    const-string v7, "null cannot be cast to non-null type com.miui.home.recents.views.FloatingIconView2"

    invoke-static {v2, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lcom/miui/home/recents/views/FloatingIconView2;

    .line 640
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleEvent: EVENT_GESTURE_APP_DOWN, alpha:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", visibility:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", parent==null:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_d

    move v2, v4

    goto :goto_3

    :cond_d
    move v2, v5

    :goto_3
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/event/Event;->getInfo()Lcom/miui/home/recents/event/EventInfo;

    move-result-object v2

    const-string v6, "null cannot be cast to non-null type com.miui.home.recents.event.GestureAppDownEventInfo"

    invoke-static {v2, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lcom/miui/home/recents/event/GestureAppDownEventInfo;

    .line 643
    iget-object v7, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v7}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v7

    if-eqz v7, :cond_f

    invoke-virtual {v7}, Lcom/miui/home/recents/anim/WindowElement;->isReusefulAnimRunning()Z

    move-result v7

    if-ne v7, v4, :cond_f

    move v7, v4

    goto :goto_4

    :cond_f
    move v7, v5

    :goto_4
    if-eqz v7, :cond_10

    .line 644
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getShortcutMenuLayerElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;

    move-result-object v1

    sget-object v3, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->Companion:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;

    invoke-virtual {v3}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;->getAppStateParams()Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->animTo(Ljava/lang/Object;)V

    goto/16 :goto_10

    .line 646
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/event/Event;->getInfo()Lcom/miui/home/recents/event/EventInfo;

    move-result-object v7

    invoke-static {v7, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v7, Lcom/miui/home/recents/event/GestureAppDownEventInfo;

    .line 647
    invoke-virtual {v7}, Lcom/miui/home/recents/event/GestureAppDownEventInfo;->isHalf()Z

    move-result v6

    const-string v8, " cancel."

    if-eqz v6, :cond_11

    .line 648
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "half "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/event/Event;->getType()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lcom/miui/home/recents/anim/StateManager$AppState;->prepareElementForAppDown(Ljava/lang/String;Z)V

    .line 649
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {v7}, Lcom/miui/home/recents/event/GestureAppDownEventInfo;->getTouchRange()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/miui/home/recents/anim/WindowElement;->updateLaunchPosition(I)V

    goto/16 :goto_c

    .line 650
    :cond_11
    invoke-virtual {v7}, Lcom/miui/home/recents/event/GestureAppDownEventInfo;->isPair()Z

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_12

    .line 651
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pair "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/event/Event;->getType()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5, v7, v3}, Lcom/miui/home/recents/anim/StateManager$AppState;->prepareElementForAppDown$default(Lcom/miui/home/recents/anim/StateManager$AppState;Ljava/lang/String;ZILjava/lang/Object;)V

    goto/16 :goto_c

    .line 653
    :cond_12
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/WindowElement;->getMSurfaceCanceled()Z

    move-result v1

    if-ne v1, v4, :cond_13

    move v1, v4

    goto :goto_5

    :cond_13
    move v1, v5

    :goto_5
    if-eqz v1, :cond_16

    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/WindowElement;->isFinishCalled()Z

    move-result v1

    if-nez v1, :cond_14

    move v1, v4

    goto :goto_6

    :cond_14
    move v1, v5

    :goto_6
    if-eqz v1, :cond_16

    .line 654
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-virtual {v1, v3}, Lcom/miui/home/recents/anim/StateManager;->setLaunchIconRunnable(Ljava/lang/Runnable;)V

    .line 655
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-virtual {v1, v3}, Lcom/miui/home/recents/anim/StateManager;->setLaunchWidgetRunnable(Ljava/lang/Runnable;)V

    .line 656
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v6

    if-eqz v6, :cond_15

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x1e

    const/4 v13, 0x0

    const-string v7, "surface finish run now."

    invoke-static/range {v6 .. v13}, Lcom/miui/home/recents/anim/WindowElement;->cancelAnim$default(Lcom/miui/home/recents/anim/WindowElement;Ljava/lang/String;ZLcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Ljava/lang/Boolean;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;ILjava/lang/Object;)V

    .line 657
    :cond_15
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1, v5, v4, v3}, Lcom/miui/home/recents/anim/StateManager;->createWindowElement$default(Lcom/miui/home/recents/anim/StateManager;ZILjava/lang/Object;)V

    goto/16 :goto_c

    .line 658
    :cond_16
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/WindowElement;->isFinishCalled()Z

    move-result v1

    if-nez v1, :cond_17

    move v1, v4

    goto :goto_7

    :cond_17
    move v1, v5

    :goto_7
    if-eqz v1, :cond_19

    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/WindowElement;->isRunning()Z

    move-result v1

    if-nez v1, :cond_18

    move v1, v4

    goto :goto_8

    :cond_18
    move v1, v5

    :goto_8
    if-eqz v1, :cond_19

    const-string v1, "anim end and without finish."

    .line 659
    invoke-static {v0, v1, v5, v7, v3}, Lcom/miui/home/recents/anim/StateManager$AppState;->prepareElementForAppDown$default(Lcom/miui/home/recents/anim/StateManager$AppState;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_c

    .line 660
    :cond_19
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/WindowElement;->isFinishCalled()Z

    move-result v1

    if-ne v1, v4, :cond_1a

    move v1, v4

    goto :goto_9

    :cond_1a
    move v1, v5

    :goto_9
    if-nez v1, :cond_1d

    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/WindowElement;->getMCanceled()Z

    move-result v1

    if-ne v1, v4, :cond_1b

    move v1, v4

    goto :goto_a

    :cond_1b
    move v1, v5

    :goto_a
    if-eqz v1, :cond_1c

    goto :goto_b

    .line 666
    :cond_1c
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/StateManager;->initWindowElement()V

    goto :goto_c

    .line 662
    :cond_1d
    :goto_b
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/WindowElement;->clearRunningBitmap()V

    .line 663
    :cond_1e
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v6

    if-eqz v6, :cond_1f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x1e

    const/4 v13, 0x0

    const-string v7, "surface finish called"

    invoke-static/range {v6 .. v13}, Lcom/miui/home/recents/anim/WindowElement;->cancelAnim$default(Lcom/miui/home/recents/anim/WindowElement;Ljava/lang/String;ZLcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Ljava/lang/Boolean;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;ILjava/lang/Object;)V

    .line 664
    :cond_1f
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1, v5, v4, v3}, Lcom/miui/home/recents/anim/StateManager;->createWindowElement$default(Lcom/miui/home/recents/anim/StateManager;ZILjava/lang/Object;)V

    .line 670
    :cond_20
    :goto_c
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/WindowElement;->hasRecentInit()Z

    move-result v1

    if-ne v1, v4, :cond_21

    move v1, v4

    goto :goto_d

    :cond_21
    move v1, v5

    :goto_d
    if-nez v1, :cond_22

    .line 671
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/WindowElement;->startRecentAnimation()V

    .line 674
    :cond_22
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/GestureSoscController;->isHalfSplitMode()Z

    move-result v1

    if-nez v1, :cond_25

    .line 675
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/WindowElement;->isRunning()Z

    move-result v1

    if-nez v1, :cond_23

    goto :goto_e

    :cond_23
    move v4, v5

    :goto_e
    if-eqz v4, :cond_24

    .line 676
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getShortcutMenuLayerElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;

    move-result-object v1

    sget-object v3, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->Companion:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;

    invoke-virtual {v3}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;->getAppStateParams()Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->setTo(Ljava/lang/Object;)V

    .line 677
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getWallpaperElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WallpaperElement;

    move-result-object v1

    sget-object v3, Lcom/miui/home/recents/anim/WallpaperParam;->Companion:Lcom/miui/home/recents/anim/WallpaperParam$Companion;

    invoke-virtual {v3}, Lcom/miui/home/recents/anim/WallpaperParam$Companion;->getAppStateParams()Lcom/miui/home/recents/anim/WallpaperParam;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/home/recents/anim/WallpaperElement;->setTo(Ljava/lang/Object;)V

    goto :goto_f

    .line 679
    :cond_24
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getShortcutMenuLayerElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;

    move-result-object v1

    sget-object v3, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->Companion:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;

    invoke-virtual {v3}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;->getAppStateParams()Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->animTo(Ljava/lang/Object;)V

    .line 680
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getWallpaperElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WallpaperElement;

    move-result-object v1

    sget-object v3, Lcom/miui/home/recents/anim/WallpaperParam;->Companion:Lcom/miui/home/recents/anim/WallpaperParam$Companion;

    invoke-virtual {v3}, Lcom/miui/home/recents/anim/WallpaperParam$Companion;->getAppStateParams()Lcom/miui/home/recents/anim/WallpaperParam;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/home/recents/anim/WallpaperElement;->animTo(Ljava/lang/Object;)V

    .line 682
    :goto_f
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getRecentBlurViewElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/RecentBlurViewElement;

    move-result-object v1

    sget-object v3, Lcom/miui/home/recents/anim/RecentBlurParams;->Companion:Lcom/miui/home/recents/anim/RecentBlurParams$Companion;

    invoke-virtual {v3}, Lcom/miui/home/recents/anim/RecentBlurParams$Companion;->getAppStateParams()Lcom/miui/home/recents/anim/RecentBlurParams;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/home/recents/anim/RecentBlurViewElement;->animTo(Ljava/lang/Object;)V

    .line 685
    :cond_25
    :goto_10
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/WindowElement;->onGestureAppDown()V

    .line 686
    :cond_26
    iget-object v0, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getTaskViewsElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/TaskViewsElement;

    move-result-object v0

    invoke-virtual {v2}, Lcom/miui/home/recents/event/GestureAppDownEventInfo;->getRunningTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/TaskViewsElement;->onGestureAppDown(I)V

    goto/16 :goto_14

    .line 805
    :cond_27
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/event/Event;->getInfo()Lcom/miui/home/recents/event/EventInfo;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.miui.home.recents.event.TaskLaunchedEventInfo"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/miui/home/recents/event/TaskLaunchedEventInfo;

    .line 806
    invoke-virtual {v1}, Lcom/miui/home/recents/event/TaskLaunchedEventInfo;->getAppearedTaskTargets()[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/recents/TaskViewUtils;->showAppearedTaskTargets([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    .line 807
    iget-object v0, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WindowElement;->onTaskLaunched()V

    goto/16 :goto_14

    .line 817
    :cond_28
    iget-object v0, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/event/Event;->getInfo()Lcom/miui/home/recents/event/EventInfo;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.miui.home.recents.event.TaskLaunchEventInfo"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/miui/home/recents/event/TaskLaunchEventInfo;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/WindowElement;->launchTask(Lcom/miui/home/recents/event/TaskLaunchEventInfo;)V

    goto/16 :goto_14

    .line 831
    :cond_29
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v2

    if-eqz v2, :cond_2a

    .line 832
    sget-object v3, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v2

    if-ne v2, v4, :cond_2a

    goto :goto_11

    :cond_2a
    move v4, v5

    :goto_11
    if-eqz v4, :cond_2b

    .line 833
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getNavStubView()Lcom/miui/home/recents/NavStubView;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lcom/miui/home/recents/NavStubView;->getGestureStateMachine()Lcom/miui/home/recents/GestureStateMachine;

    move-result-object v0

    if-eqz v0, :cond_39

    const/16 v1, 0xd

    .line 834
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    goto/16 :goto_14

    .line 836
    :cond_2b
    check-cast v1, Lcom/miui/home/recents/event/RemoteShellAbortEvent;

    .line 837
    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v2}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v2

    if-eqz v2, :cond_2c

    invoke-virtual {v1}, Lcom/miui/home/recents/event/RemoteShellAbortEvent;->getInfo()Lcom/miui/home/recents/event/GestureAppAbortEventInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/event/GestureAppAbortEventInfo;->getRectFParams()Lcom/miui/home/recents/anim/RectFParams;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/miui/home/recents/anim/WindowElement;->animTo(Ljava/lang/Object;)V

    .line 838
    :cond_2c
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getTaskViewsElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/TaskViewsElement;

    move-result-object v1

    sget-object v2, Lcom/miui/home/recents/anim/TaskViewsParams;->Companion:Lcom/miui/home/recents/anim/TaskViewsParams$Companion;

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/TaskViewsParams$Companion;->buildAppToHomeTaskViewParams()Lcom/miui/home/recents/anim/TaskViewsParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/anim/TaskViewsElement;->animTo(Ljava/lang/Object;)V

    .line 839
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getShortcutMenuLayerElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;

    move-result-object v1

    sget-object v2, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->Companion:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;->getHomeStateParams()Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->animTo(Ljava/lang/Object;)V

    .line 840
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getWallpaperElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WallpaperElement;

    move-result-object v1

    sget-object v2, Lcom/miui/home/recents/anim/WallpaperParam;->Companion:Lcom/miui/home/recents/anim/WallpaperParam$Companion;

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/WallpaperParam$Companion;->getHomeStateParams()Lcom/miui/home/recents/anim/WallpaperParam;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/anim/WallpaperElement;->animTo(Ljava/lang/Object;)V

    .line 841
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getRecentBlurViewElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/RecentBlurViewElement;

    move-result-object v1

    sget-object v2, Lcom/miui/home/recents/anim/RecentBlurParams;->Companion:Lcom/miui/home/recents/anim/RecentBlurParams$Companion;

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/RecentBlurParams$Companion;->getHomeStateParams()Lcom/miui/home/recents/anim/RecentBlurParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/anim/RecentBlurViewElement;->animTo(Ljava/lang/Object;)V

    .line 842
    iget-object v0, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getHomeState$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/StateManager$HomeState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/anim/StateManager;->access$gotoState(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/State;)V

    goto/16 :goto_14

    .line 825
    :cond_2d
    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/StateManager;->initWindowElement()V

    .line 826
    iget-object v0, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/event/Event;->getInfo()Lcom/miui/home/recents/event/EventInfo;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.miui.home.recents.event.OpenWidgetFromElementTransitionInfo"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/miui/home/recents/event/OpenWidgetFromElementTransitionInfo;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/WindowElement;->injectOpenWidgetFromElementTransition(Lcom/miui/home/recents/event/OpenWidgetFromElementTransitionInfo;)V

    goto/16 :goto_14

    .line 775
    :cond_2e
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/event/Event;->getInfo()Lcom/miui/home/recents/event/EventInfo;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.miui.home.recents.event.SmallWindowStrokeSwitchEventInfo"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEventInfo;

    .line 776
    iget-object v7, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    .line 777
    invoke-virtual {v1}, Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEventInfo;->getSmallWindow()Lcom/miui/home/recents/views/SmallWindowCrop;

    move-result-object v8

    invoke-virtual {v1}, Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEventInfo;->getFreeformLeash()Landroid/view/SurfaceControl;

    move-result-object v9

    invoke-virtual {v1}, Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEventInfo;->getFreeformColor()[F

    move-result-object v10

    .line 778
    invoke-virtual {v1}, Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEventInfo;->getFreeformAlpha()F

    move-result v11

    invoke-virtual {v1}, Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEventInfo;->getFreeformStroke()F

    move-result v12

    .line 776
    invoke-virtual/range {v7 .. v12}, Lcom/miui/home/recents/anim/StateManager;->strokeSwitch(Lcom/miui/home/recents/views/SmallWindowCrop;Landroid/view/SurfaceControl;[FFF)Z

    move-result v0

    if-nez v0, :cond_39

    const-string v0, "strokeSwitch: stroke error"

    .line 781
    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    invoke-virtual {v1}, Lcom/miui/home/recents/event/SmallWindowStrokeSwitchEventInfo;->getSmallWindow()Lcom/miui/home/recents/views/SmallWindowCrop;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/SmallWindowCrop;->finish()V

    goto/16 :goto_14

    .line 821
    :cond_2f
    iget-object v0, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/event/Event;->getInfo()Lcom/miui/home/recents/event/EventInfo;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.miui.home.recents.event.PairTaskLaunchEventInfo"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/miui/home/recents/event/PairTaskLaunchEventInfo;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/WindowElement;->launchPairTask(Lcom/miui/home/recents/event/PairTaskLaunchEventInfo;)V

    goto/16 :goto_14

    .line 812
    :cond_30
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/event/Event;->getInfo()Lcom/miui/home/recents/event/EventInfo;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.miui.home.recents.event.TaskLaunchForHalfQuickSwitchEventInfo"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/miui/home/recents/event/TaskLaunchForHalfQuickSwitchEventInfo;

    .line 813
    iget-object v0, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/WindowElement;->launchTaskForHalfQuickSwitch(Lcom/miui/home/recents/event/TaskLaunchForHalfQuickSwitchEventInfo;)V

    goto/16 :goto_14

    .line 764
    :cond_31
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/event/Event;->getInfo()Lcom/miui/home/recents/event/EventInfo;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.miui.home.recents.event.HalfAppToRecentEventInfo"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/miui/home/recents/event/HalfAppToRecentEventInfo;

    .line 765
    invoke-virtual {v1}, Lcom/miui/home/recents/event/HalfAppToRecentEventInfo;->getTaskViewParams()Lcom/miui/home/recents/anim/TaskViewsParams;

    move-result-object v2

    if-eqz v2, :cond_32

    iget-object v3, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v3}, Lcom/miui/home/recents/anim/StateManager;->access$getTaskViewsElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/TaskViewsElement;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/miui/home/recents/anim/TaskViewsElement;->animTo(Ljava/lang/Object;)V

    .line 766
    :cond_32
    iget-object v0, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {v1}, Lcom/miui/home/recents/event/HalfAppToRecentEventInfo;->getRectFParams()Lcom/miui/home/recents/anim/RectFParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/WindowElement;->animTo(Ljava/lang/Object;)V

    goto/16 :goto_14

    .line 848
    :cond_33
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v1

    if-eqz v1, :cond_34

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/WindowElement;->hasRecentInit()Z

    move-result v1

    if-ne v1, v4, :cond_34

    goto :goto_12

    :cond_34
    move v4, v5

    :goto_12
    if-nez v4, :cond_39

    .line 849
    iget-object v0, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WindowElement;->startRecentAnimation()V

    goto :goto_14

    .line 800
    :cond_35
    iget-object v0, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/event/Event;->getType()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/miui/home/recents/anim/StateManager;->cancelAnim$default(Lcom/miui/home/recents/anim/StateManager;Ljava/lang/String;ZLcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;ILjava/lang/Object;)V

    .line 801
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager;->resetState()V

    goto :goto_14

    .line 623
    :cond_36
    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v2}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v2

    if-eqz v2, :cond_37

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/WindowElement;->mainAnimNoFinishClear()Z

    move-result v2

    if-ne v2, v4, :cond_37

    goto :goto_13

    :cond_37
    move v4, v5

    :goto_13
    if-eqz v4, :cond_38

    .line 624
    iget-object v5, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    new-instance v7, Lcom/miui/home/recents/anim/StateManager$AppState$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0, v1}, Lcom/miui/home/recents/anim/StateManager$AppState$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/anim/StateManager$AppState;Lcom/miui/home/recents/event/Event;)V

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, "menu click."

    invoke-static/range {v5 .. v10}, Lcom/miui/home/recents/anim/StateManager;->cancelAll$default(Lcom/miui/home/recents/anim/StateManager;Ljava/lang/String;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;ILjava/lang/Object;)V

    goto :goto_14

    .line 631
    :cond_38
    iget-object v11, v0, Lcom/miui/home/recents/anim/StateManager$AppState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    const-string v12, "menu click."

    invoke-static/range {v11 .. v16}, Lcom/miui/home/recents/anim/StateManager;->cancelAll$default(Lcom/miui/home/recents/anim/StateManager;Ljava/lang/String;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;ILjava/lang/Object;)V

    .line 632
    invoke-direct/range {p0 .. p1}, Lcom/miui/home/recents/anim/StateManager$AppState;->onMenuClick(Lcom/miui/home/recents/event/Event;)V

    :cond_39
    :goto_14
    return-void

    :pswitch_data_0
    .packed-switch 0x1771
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
