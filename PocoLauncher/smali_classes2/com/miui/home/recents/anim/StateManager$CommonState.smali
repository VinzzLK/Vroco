.class final Lcom/miui/home/recents/anim/StateManager$CommonState;
.super Lcom/miui/home/recents/anim/State;
.source "StateManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/anim/StateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CommonState"
.end annotation


# instance fields
.field private final stateName:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/home/recents/anim/StateManager;


# direct methods
.method public static synthetic $r8$lambda$Ebjx8Su-oT2a47253q0QGZeAdhY(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/StateManager$CommonState;Lcom/miui/home/recents/event/FocusNotifyIconClickEventInfo;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/recents/anim/StateManager$CommonState;->onContinueStartActivityAnim$lambda-7(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/StateManager$CommonState;Lcom/miui/home/recents/event/FocusNotifyIconClickEventInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FACtrcD1SzOsBCVuMFF93k7MRg4(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/StateManager$CommonState;Lcom/miui/home/recents/event/FocusNotifyIconClickEventInfo;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/recents/anim/StateManager$CommonState;->onContinueStartActivityAnim$lambda-7$lambda-6(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/StateManager$CommonState;Lcom/miui/home/recents/event/FocusNotifyIconClickEventInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L1n6y036jio7W6vFgYHG3Ta7fFw(Lcom/miui/home/recents/anim/StateManager$CommonState;Lcom/miui/home/recents/event/StartActivityEventInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/recents/anim/StateManager$CommonState;->handleEvent$lambda-1(Lcom/miui/home/recents/anim/StateManager$CommonState;Lcom/miui/home/recents/event/StartActivityEventInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NfM-VKtf5VU60j4G7Oj-IsCuwfc(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/StateManager$CommonState;Lcom/miui/home/recents/event/FocusNotifyIconClickEventInfo;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/recents/anim/StateManager$CommonState;->onContinueStartActivityAnim$lambda-5(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/StateManager$CommonState;Lcom/miui/home/recents/event/FocusNotifyIconClickEventInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XWCAC3lyRpPCVnFATh-eYX9IuGo(Lcom/miui/home/recents/anim/StateManager$CommonState;Lcom/miui/home/recents/event/StartActivityEventInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/recents/anim/StateManager$CommonState;->handleEvent$lambda-3$lambda-2(Lcom/miui/home/recents/anim/StateManager$CommonState;Lcom/miui/home/recents/event/StartActivityEventInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YkOewtTLyqnr0IR7nA-NGGNufFw(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/StateManager$CommonState;Lcom/miui/home/recents/event/FocusNotifyIconClickEventInfo;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/home/recents/anim/StateManager$CommonState;->onContinueStartActivityAnim$lambda-5$lambda-4(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/StateManager$CommonState;Lcom/miui/home/recents/event/FocusNotifyIconClickEventInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hXQcDgFCgxF1wf8teqUBHmdYAcU(Lcom/miui/home/recents/anim/StateManager$CommonState;Lcom/miui/home/recents/event/StartActivityEventInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/recents/anim/StateManager$CommonState;->handleEvent$lambda-3(Lcom/miui/home/recents/anim/StateManager$CommonState;Lcom/miui/home/recents/event/StartActivityEventInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zzWwrH_8YH9iIEqfQpTk2EBX7lQ(Lcom/miui/home/recents/anim/StateManager$CommonState;Lcom/miui/home/recents/event/StartActivityEventInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/recents/anim/StateManager$CommonState;->handleEvent$lambda-1$lambda-0(Lcom/miui/home/recents/anim/StateManager$CommonState;Lcom/miui/home/recents/event/StartActivityEventInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/recents/anim/StateManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1143
    iput-object p1, p0, Lcom/miui/home/recents/anim/StateManager$CommonState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-direct {p0}, Lcom/miui/home/recents/anim/State;-><init>()V

    const-string p1, "CommonState"

    .line 1144
    iput-object p1, p0, Lcom/miui/home/recents/anim/StateManager$CommonState;->stateName:Ljava/lang/String;

    return-void
.end method

.method private static final handleEvent$lambda-1(Lcom/miui/home/recents/anim/StateManager$CommonState;Lcom/miui/home/recents/event/StartActivityEventInfo;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$eventInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1198
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/anim/StateManager$CommonState$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/anim/StateManager$CommonState$$ExternalSyntheticLambda5;-><init>(Lcom/miui/home/recents/anim/StateManager$CommonState;Lcom/miui/home/recents/event/StartActivityEventInfo;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final handleEvent$lambda-1$lambda-0(Lcom/miui/home/recents/anim/StateManager$CommonState;Lcom/miui/home/recents/event/StartActivityEventInfo;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$eventInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AnimStateManager"

    const-string v1, "start activity onTransactionReady."

    .line 1199
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/StateManager$CommonState;->startActivity(Lcom/miui/home/recents/event/StartActivityEventInfo;)V

    return-void
.end method

.method private static final handleEvent$lambda-3(Lcom/miui/home/recents/anim/StateManager$CommonState;Lcom/miui/home/recents/event/StartActivityEventInfo;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$eventInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1205
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/anim/StateManager$CommonState$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/anim/StateManager$CommonState$$ExternalSyntheticLambda4;-><init>(Lcom/miui/home/recents/anim/StateManager$CommonState;Lcom/miui/home/recents/event/StartActivityEventInfo;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final handleEvent$lambda-3$lambda-2(Lcom/miui/home/recents/anim/StateManager$CommonState;Lcom/miui/home/recents/event/StartActivityEventInfo;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$eventInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AnimStateManager"

    const-string v1, "start activity onTransactionReady."

    .line 1206
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/StateManager$CommonState;->startActivity(Lcom/miui/home/recents/event/StartActivityEventInfo;)V

    return-void
.end method

.method private final notifyFocusStartActivity(Ljava/lang/String;)V
    .locals 4

    .line 1313
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$CommonState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/miui/home/recents/anim/StateManager;->createWindowElement$default(Lcom/miui/home/recents/anim/StateManager;ZILjava/lang/Object;)V

    .line 1314
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager$CommonState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {p0}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/WindowElement;->setNotifyPackage(Ljava/lang/String;)V

    .line 1315
    :cond_0
    sget-object p0, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;

    invoke-virtual {p0}, Lcom/miui/home/recents/MiuiSystemUiProxyWrapper;->onContinueStartActivityAnim()V

    return-void
.end method

.method private final onContinueStartActivityAnim(Lcom/miui/home/recents/event/FocusNotifyIconClickEventInfo;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1295
    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$CommonState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v2}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/WindowElement;->mainAnimNoFinishClear()Z

    move-result v2

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    if-eqz v3, :cond_1

    .line 1296
    iget-object v4, v0, Lcom/miui/home/recents/anim/StateManager$CommonState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    const/4 v6, 0x0

    new-instance v7, Lcom/miui/home/recents/anim/StateManager$CommonState$$ExternalSyntheticLambda3;

    invoke-direct {v7, v4, v0, v1}, Lcom/miui/home/recents/anim/StateManager$CommonState$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/StateManager$CommonState;Lcom/miui/home/recents/event/FocusNotifyIconClickEventInfo;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object/from16 v5, p2

    invoke-static/range {v4 .. v9}, Lcom/miui/home/recents/anim/StateManager;->cancelAnim$default(Lcom/miui/home/recents/anim/StateManager;Ljava/lang/String;ZLcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;ILjava/lang/Object;)V

    goto :goto_1

    .line 1303
    :cond_1
    iget-object v10, v0, Lcom/miui/home/recents/anim/StateManager$CommonState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    const/4 v12, 0x0

    new-instance v13, Lcom/miui/home/recents/anim/StateManager$CommonState$$ExternalSyntheticLambda2;

    invoke-direct {v13, v10, v0, v1}, Lcom/miui/home/recents/anim/StateManager$CommonState$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/StateManager$CommonState;Lcom/miui/home/recents/event/FocusNotifyIconClickEventInfo;)V

    const/4 v14, 0x2

    const/4 v15, 0x0

    move-object/from16 v11, p2

    invoke-static/range {v10 .. v15}, Lcom/miui/home/recents/anim/StateManager;->cancelAnim$default(Lcom/miui/home/recents/anim/StateManager;Ljava/lang/String;ZLcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;ILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private static final onContinueStartActivityAnim$lambda-5(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/StateManager$CommonState;Lcom/miui/home/recents/event/FocusNotifyIconClickEventInfo;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1297
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/anim/StateManager$CommonState$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/recents/anim/StateManager$CommonState$$ExternalSyntheticLambda7;-><init>(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/StateManager$CommonState;Lcom/miui/home/recents/event/FocusNotifyIconClickEventInfo;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final onContinueStartActivityAnim$lambda-5$lambda-4(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/StateManager$CommonState;Lcom/miui/home/recents/event/FocusNotifyIconClickEventInfo;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1298
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager;->resetState()V

    .line 1299
    invoke-virtual {p2}, Lcom/miui/home/recents/event/FocusNotifyIconClickEventInfo;->getPkgName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/miui/home/recents/anim/StateManager$CommonState;->notifyFocusStartActivity(Ljava/lang/String;)V

    return-void
.end method

.method private static final onContinueStartActivityAnim$lambda-7(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/StateManager$CommonState;Lcom/miui/home/recents/event/FocusNotifyIconClickEventInfo;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1304
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/anim/StateManager$CommonState$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/recents/anim/StateManager$CommonState$$ExternalSyntheticLambda6;-><init>(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/StateManager$CommonState;Lcom/miui/home/recents/event/FocusNotifyIconClickEventInfo;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final onContinueStartActivityAnim$lambda-7$lambda-6(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/StateManager$CommonState;Lcom/miui/home/recents/event/FocusNotifyIconClickEventInfo;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1305
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager;->resetState()V

    .line 1306
    invoke-virtual {p2}, Lcom/miui/home/recents/event/FocusNotifyIconClickEventInfo;->getPkgName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/miui/home/recents/anim/StateManager$CommonState;->notifyFocusStartActivity(Ljava/lang/String;)V

    return-void
.end method

.method private final onFocusNotifyIconClick(Lcom/miui/home/recents/event/Event;)V
    .locals 4

    .line 1273
    invoke-virtual {p1}, Lcom/miui/home/recents/event/Event;->getInfo()Lcom/miui/home/recents/event/EventInfo;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.miui.home.recents.event.FocusNotifyIconClickEventInfo"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/miui/home/recents/event/FocusNotifyIconClickEventInfo;

    .line 1274
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$CommonState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WindowElement;->isReusefulAnimRunning()Z

    move-result v0

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_4

    .line 1275
    invoke-virtual {p1}, Lcom/miui/home/recents/event/FocusNotifyIconClickEventInfo;->getPkgName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/anim/StateManager$CommonState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/WindowElement;->getNotifyPackage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1277
    sget-object p1, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->INSTANCE:Lcom/miui/home/recents/anim/WindowAnimParamsProvider;

    new-instance v0, Landroid/graphics/RectF;

    sget-object v1, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->INSTANCE:Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;

    invoke-virtual {v1}, Lcom/miui/home/launcher/anim/StatusBarIconTypeAnimHelper;->getMRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v2, v3, v0}, Lcom/miui/home/recents/anim/WindowAnimParamsProvider;->getRecentOpeningWindowParams(ZLandroid/view/View;Landroid/graphics/RectF;)Lcom/miui/home/recents/anim/RectFParams;

    move-result-object p1

    .line 1278
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$CommonState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/anim/WindowElement;->animTo(Ljava/lang/Object;)V

    .line 1279
    :cond_2
    iget-object p1, p0, Lcom/miui/home/recents/anim/StateManager$CommonState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {p1}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/WindowElement;->onRecentAnimToFullScreen()V

    .line 1280
    :cond_3
    iget-object p1, p0, Lcom/miui/home/recents/anim/StateManager$CommonState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {p1}, Lcom/miui/home/recents/anim/StateManager;->access$getShortcutMenuLayerElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;

    move-result-object p1

    sget-object v0, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->Companion:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;->getAppStateParams()Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->animTo(Ljava/lang/Object;)V

    .line 1281
    iget-object p1, p0, Lcom/miui/home/recents/anim/StateManager$CommonState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {p1}, Lcom/miui/home/recents/anim/StateManager;->access$getWallpaperElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WallpaperElement;

    move-result-object p1

    sget-object v0, Lcom/miui/home/recents/anim/WallpaperParam;->Companion:Lcom/miui/home/recents/anim/WallpaperParam$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WallpaperParam$Companion;->getAppStateParams()Lcom/miui/home/recents/anim/WallpaperParam;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/anim/WallpaperElement;->animTo(Ljava/lang/Object;)V

    .line 1282
    iget-object p1, p0, Lcom/miui/home/recents/anim/StateManager$CommonState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {p1}, Lcom/miui/home/recents/anim/StateManager;->access$getRecentBlurViewElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/RecentBlurViewElement;

    move-result-object p1

    sget-object v0, Lcom/miui/home/recents/anim/RecentBlurParams;->Companion:Lcom/miui/home/recents/anim/RecentBlurParams$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/RecentBlurParams$Companion;->getAppStateParams()Lcom/miui/home/recents/anim/RecentBlurParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/anim/RecentBlurViewElement;->animTo(Ljava/lang/Object;)V

    .line 1283
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    const-string v0, "noStartActivityAppOpen"

    const-string v1, "gesture"

    invoke-static {p1, v0, v1}, Lcom/miui/home/recents/util/StateNotifyUtils;->sendStateToRemote(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v0, "onFocusNotifyIconClick"

    .line 1285
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/anim/StateManager$CommonState;->onContinueStartActivityAnim(Lcom/miui/home/recents/event/FocusNotifyIconClickEventInfo;Ljava/lang/String;)V

    .line 1287
    :goto_1
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager$CommonState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {p0}, Lcom/miui/home/recents/anim/StateManager;->access$getAppState$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/StateManager$AppState;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/home/recents/anim/StateManager;->access$gotoState(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/State;)V

    return-void
.end method

.method private final startActivity(Lcom/miui/home/recents/event/StartActivityEventInfo;)V
    .locals 7

    .line 1319
    invoke-virtual {p1}, Lcom/miui/home/recents/event/StartActivityEventInfo;->getCommon()Lcom/miui/home/recents/event/CommonStartActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1320
    invoke-virtual {v0}, Lcom/miui/home/recents/event/CommonStartActivityInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/home/recents/event/CommonStartActivityInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1322
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/recents/event/StartActivityEventInfo;->getLauncher()Lcom/miui/home/recents/event/LauncherStartActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager$CommonState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    .line 1323
    invoke-virtual {v0}, Lcom/miui/home/recents/event/LauncherStartActivityInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/home/recents/event/LauncherStartActivityInfo;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/home/recents/event/LauncherStartActivityInfo;->getV()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/miui/home/recents/anim/StateManager;->onLauncherStartActivity(Landroid/content/Intent;Ljava/lang/Object;Landroid/view/View;)V

    .line 1325
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/recents/event/StartActivityEventInfo;->getSuperStart()Lcom/miui/home/recents/event/SuperStartActivityInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1326
    invoke-virtual {p0}, Lcom/miui/home/recents/event/SuperStartActivityInfo;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/recents/event/SuperStartActivityInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/home/recents/event/SuperStartActivityInfo;->getOptions()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/home/recents/event/SuperStartActivityInfo;->isWidget()Z

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Lcom/miui/home/launcher/Launcher;->superStartActivity(Landroid/content/Intent;Landroid/os/Bundle;Z)V

    .line 1328
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/recents/event/StartActivityEventInfo;->getIntentSender()Lcom/miui/home/recents/event/WidgetIntentSenderInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 1329
    invoke-virtual {p0}, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1330
    invoke-virtual {p0}, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->getIntent()Landroid/content/IntentSender;

    move-result-object v1

    .line 1331
    invoke-virtual {p0}, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->getFillInIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1332
    invoke-virtual {p0}, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->getFlagsMask()I

    move-result v3

    .line 1333
    invoke-virtual {p0}, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->getFlagsValues()I

    move-result v4

    .line 1334
    invoke-virtual {p0}, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->getExtraFlags()I

    move-result v5

    .line 1335
    invoke-virtual {p0}, Lcom/miui/home/recents/event/WidgetIntentSenderInfo;->getOptions()Landroid/os/Bundle;

    move-result-object v6

    .line 1329
    invoke-virtual/range {v0 .. v6}, Lcom/miui/home/launcher/Launcher;->superStartIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 1338
    :cond_3
    invoke-virtual {p1}, Lcom/miui/home/recents/event/StartActivityEventInfo;->getApplicationStart()Lcom/miui/home/recents/event/ApplicationStartActivityInfo;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 1339
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/Application;->superApplicationStartActivity(Lcom/miui/home/recents/event/ApplicationStartActivityInfo;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public getStateName()Ljava/lang/String;
    .locals 0

    .line 1144
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager$CommonState;->stateName:Ljava/lang/String;

    return-object p0
.end method

.method public handleEvent(Lcom/miui/home/recents/event/Event;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "event"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1147
    invoke-super/range {p0 .. p1}, Lcom/miui/home/recents/anim/State;->handleEvent(Lcom/miui/home/recents/event/Event;)V

    .line 1148
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/event/Event;->getType()I

    move-result v2

    const/16 v3, 0x7de

    if-eq v2, v3, :cond_1e

    const/16 v3, 0x1f41

    if-eq v2, v3, :cond_1d

    const/16 v3, 0x270f

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_1a

    const/16 v3, 0x1b64

    if-eq v2, v3, :cond_17

    const/16 v3, 0x1b65

    if-eq v2, v3, :cond_13

    packed-switch v2, :pswitch_data_0

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_d

    .line 1251
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/event/Event;->getInfo()Lcom/miui/home/recents/event/EventInfo;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.miui.home.recents.event.RecentTransitionInfo"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/miui/home/recents/event/RecentTransitionInfo;

    .line 1252
    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$CommonState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v2}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$CommonState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v2}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/WindowElement;->isRecentTransitionRequested()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$CommonState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v2}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/WindowElement;->isFinishCalled()Z

    move-result v2

    if-ne v2, v5, :cond_1

    move v2, v5

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    if-eqz v2, :cond_2

    goto :goto_2

    .line 1256
    :cond_2
    iget-object v0, v0, Lcom/miui/home/recents/anim/StateManager$CommonState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/WindowElement;->injectRecentTransition(Lcom/miui/home/recents/event/RecentTransitionInfo;)V

    goto/16 :goto_d

    .line 1253
    :cond_3
    :goto_2
    invoke-virtual {v1}, Lcom/miui/home/recents/event/RecentTransitionInfo;->getController()Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    move-result-object v0

    invoke-virtual {v0, v4, v5, v3}, Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;->finish(ZZLcom/android/internal/os/IResultReceiver;)V

    const-string v0, "AnimStateManager_FW_FINISH"

    const-string v1, "handleEvent: EVENT_RECENT_TRANSITION_RECEIVED, finish"

    .line 1254
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 1235
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/event/Event;->getInfo()Lcom/miui/home/recents/event/EventInfo;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.miui.home.recents.event.RemoteTransitionInfo"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/miui/home/recents/event/RemoteTransitionInfo;

    .line 1236
    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$CommonState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v2}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/WindowElement;->isFinishCalled()Z

    move-result v2

    if-ne v2, v5, :cond_4

    move v2, v5

    goto :goto_3

    :cond_4
    move v2, v4

    :goto_3
    if-nez v2, :cond_9

    .line 1237
    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$CommonState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v2}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/WindowElement;->isWaitFinishMainAnim()Z

    move-result v2

    if-ne v2, v5, :cond_5

    move v2, v5

    goto :goto_4

    :cond_5
    move v2, v4

    :goto_4
    if-nez v2, :cond_9

    .line 1238
    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$CommonState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v2}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/WindowElement;->isFinishComplete()Z

    move-result v2

    if-ne v2, v5, :cond_6

    move v2, v5

    goto :goto_5

    :cond_6
    move v2, v4

    :goto_5
    if-nez v2, :cond_9

    .line 1239
    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$CommonState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v2}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/WindowElement;->hasMainTransition()Z

    move-result v2

    if-ne v2, v5, :cond_7

    move v2, v5

    goto :goto_6

    :cond_7
    move v2, v4

    :goto_6
    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lcom/miui/home/recents/event/RemoteTransitionInfo;->isMerge()Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_7

    .line 1244
    :cond_8
    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$CommonState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/StateManager;->initWindowElement()V

    goto :goto_8

    .line 1241
    :cond_9
    :goto_7
    iget-object v6, v0, Lcom/miui/home/recents/anim/StateManager$CommonState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    const-string v7, "another transition start."

    invoke-static/range {v6 .. v11}, Lcom/miui/home/recents/anim/StateManager;->cancelAll$default(Lcom/miui/home/recents/anim/StateManager;Ljava/lang/String;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;ILjava/lang/Object;)V

    .line 1242
    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$CommonState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v2, v4, v5, v3}, Lcom/miui/home/recents/anim/StateManager;->createWindowElement$default(Lcom/miui/home/recents/anim/StateManager;ZILjava/lang/Object;)V

    .line 1246
    :goto_8
    iget-object v0, v0, Lcom/miui/home/recents/anim/StateManager$CommonState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/WindowElement;->injectRemoteTransition(Lcom/miui/home/recents/event/RemoteTransitionInfo;)V

    goto/16 :goto_d

    .line 1193
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/event/Event;->getInfo()Lcom/miui/home/recents/event/EventInfo;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.miui.home.recents.event.StartActivityEventInfo"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/miui/home/recents/event/StartActivityEventInfo;

    .line 1194
    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$CommonState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v2}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/WindowElement;->getMAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->getLastAminType()Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    move-result-object v2

    goto :goto_9

    :cond_a
    move-object v2, v3

    :goto_9
    sget-object v6, Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;->CLOSE_TO_HOME:Lcom/miui/home/recents/util/RectFSpringAnim$AnimType;

    if-ne v2, v6, :cond_b

    move v2, v5

    goto :goto_a

    :cond_b
    move v2, v4

    .line 1195
    :goto_a
    iget-object v6, v0, Lcom/miui/home/recents/anim/StateManager$CommonState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v6}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Lcom/miui/home/recents/anim/WindowElement;->mainAnimNoFinishClear()Z

    move-result v6

    if-ne v6, v5, :cond_c

    move v4, v5

    :cond_c
    if-eqz v4, :cond_e

    if-eqz v2, :cond_d

    .line 1197
    iget-object v5, v0, Lcom/miui/home/recents/anim/StateManager$CommonState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    const/4 v7, 0x0

    new-instance v8, Lcom/miui/home/recents/anim/StateManager$CommonState$$ExternalSyntheticLambda0;

    invoke-direct {v8, v0, v1}, Lcom/miui/home/recents/anim/StateManager$CommonState$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/anim/StateManager$CommonState;Lcom/miui/home/recents/event/StartActivityEventInfo;)V

    const/4 v9, 0x2

    const/4 v10, 0x0

    const-string v6, "event start activity."

    invoke-static/range {v5 .. v10}, Lcom/miui/home/recents/anim/StateManager;->cancelAnim$default(Lcom/miui/home/recents/anim/StateManager;Ljava/lang/String;ZLcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;ILjava/lang/Object;)V

    goto/16 :goto_d

    .line 1204
    :cond_d
    iget-object v11, v0, Lcom/miui/home/recents/anim/StateManager$CommonState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    new-instance v13, Lcom/miui/home/recents/anim/StateManager$CommonState$$ExternalSyntheticLambda1;

    invoke-direct {v13, v0, v1}, Lcom/miui/home/recents/anim/StateManager$CommonState$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/recents/anim/StateManager$CommonState;Lcom/miui/home/recents/event/StartActivityEventInfo;)V

    const/4 v14, 0x0

    const/4 v15, 0x4

    const/16 v16, 0x0

    const-string v12, "event start activity."

    invoke-static/range {v11 .. v16}, Lcom/miui/home/recents/anim/StateManager;->cancelAll$default(Lcom/miui/home/recents/anim/StateManager;Ljava/lang/String;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;ILjava/lang/Object;)V

    goto/16 :goto_d

    .line 1212
    :cond_e
    invoke-virtual {v1}, Lcom/miui/home/recents/event/StartActivityEventInfo;->getSuperStart()Lcom/miui/home/recents/event/SuperStartActivityInfo;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-virtual {v4}, Lcom/miui/home/recents/event/SuperStartActivityInfo;->getOptions()Landroid/os/Bundle;

    move-result-object v3

    :cond_f
    if-nez v3, :cond_11

    if-eqz v2, :cond_10

    .line 1214
    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$CommonState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v2}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v3

    if-eqz v3, :cond_11

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1e

    const/4 v10, 0x0

    const-string v4, "event start activity."

    invoke-static/range {v3 .. v10}, Lcom/miui/home/recents/anim/WindowElement;->cancelAnim$default(Lcom/miui/home/recents/anim/WindowElement;Ljava/lang/String;ZLcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Ljava/lang/Boolean;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;ILjava/lang/Object;)V

    goto :goto_b

    .line 1216
    :cond_10
    iget-object v11, v0, Lcom/miui/home/recents/anim/StateManager$CommonState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    const/16 v16, 0x0

    const-string v12, "event start activity."

    invoke-static/range {v11 .. v16}, Lcom/miui/home/recents/anim/StateManager;->cancelAll$default(Lcom/miui/home/recents/anim/StateManager;Ljava/lang/String;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;ILjava/lang/Object;)V

    .line 1219
    :cond_11
    :goto_b
    invoke-direct {v0, v1}, Lcom/miui/home/recents/anim/StateManager$CommonState;->startActivity(Lcom/miui/home/recents/event/StartActivityEventInfo;)V

    goto/16 :goto_d

    .line 1231
    :pswitch_3
    iget-object v0, v0, Lcom/miui/home/recents/anim/StateManager$CommonState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getWallpaperElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WallpaperElement;

    move-result-object v0

    sget-object v1, Lcom/miui/home/recents/anim/WallpaperParam;->Companion:Lcom/miui/home/recents/anim/WallpaperParam$Companion;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/WallpaperParam$Companion;->getHomeStateParams()Lcom/miui/home/recents/anim/WallpaperParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/WallpaperElement;->setTo(Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 1267
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/miui/home/recents/anim/StateManager$CommonState;->onFocusNotifyIconClick(Lcom/miui/home/recents/event/Event;)V

    goto/16 :goto_d

    .line 1225
    :pswitch_5
    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$CommonState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v2}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/WindowElement;->isClosingAnimRunning()Z

    move-result v2

    if-ne v2, v5, :cond_12

    move v4, v5

    :cond_12
    if-eqz v4, :cond_1f

    .line 1226
    iget-object v5, v0, Lcom/miui/home/recents/anim/StateManager$CommonState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/anim/StateManager$CommonState;->getStateName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/event/Event;->getType()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " need cancel."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/miui/home/recents/anim/StateManager;->cancelAll$default(Lcom/miui/home/recents/anim/StateManager;Ljava/lang/String;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;Lcom/android/systemui/shared/recents/utilities/ShellTransitionCallback;ILjava/lang/Object;)V

    goto/16 :goto_d

    .line 1175
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/event/Event;->getInfo()Lcom/miui/home/recents/event/EventInfo;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.miui.home.recents.event.ExitOverviewStateEventInfo"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/miui/home/recents/event/ExitOverviewStateEventInfo;

    .line 1176
    invoke-virtual {v1}, Lcom/miui/home/recents/event/ExitOverviewStateEventInfo;->isFromRecentLaunchAnimEnd()Z

    move-result v2

    if-nez v2, :cond_14

    .line 1177
    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$CommonState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v2}, Lcom/miui/home/recents/anim/StateManager;->access$getWallpaperElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WallpaperElement;

    move-result-object v2

    sget-object v3, Lcom/miui/home/recents/anim/WallpaperParam;->Companion:Lcom/miui/home/recents/anim/WallpaperParam$Companion;

    invoke-virtual {v3}, Lcom/miui/home/recents/anim/WallpaperParam$Companion;->getHomeStateParams()Lcom/miui/home/recents/anim/WallpaperParam;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/home/recents/anim/WallpaperElement;->animTo(Ljava/lang/Object;)V

    .line 1181
    :cond_14
    sget-boolean v2, Lcom/miui/home/launcher/Launcher;->IS_RECENTS_WINDOW:Z

    if-nez v2, :cond_16

    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_c

    .line 1184
    :cond_15
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v1}, Lcom/miui/home/recents/event/ExitOverviewStateEventInfo;->getToState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurWhenExitRecents(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherState;Z)V

    goto/16 :goto_d

    .line 1182
    :cond_16
    :goto_c
    iget-object v0, v0, Lcom/miui/home/recents/anim/StateManager$CommonState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getRecentBlurViewElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/RecentBlurViewElement;

    move-result-object v0

    sget-object v1, Lcom/miui/home/recents/anim/RecentBlurParams;->Companion:Lcom/miui/home/recents/anim/RecentBlurParams$Companion;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/RecentBlurParams$Companion;->getHomeStateParams()Lcom/miui/home/recents/anim/RecentBlurParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/RecentBlurViewElement;->animTo(Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 1161
    :cond_17
    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$CommonState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v2}, Lcom/miui/home/recents/anim/StateManager;->access$getCurrentState$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/State;

    move-result-object v2

    iget-object v3, v0, Lcom/miui/home/recents/anim/StateManager$CommonState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v3}, Lcom/miui/home/recents/anim/StateManager;->access$getAppState$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/StateManager$AppState;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 1162
    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$CommonState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v2}, Lcom/miui/home/recents/anim/StateManager;->access$getWallpaperElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WallpaperElement;

    move-result-object v2

    sget-object v3, Lcom/miui/home/recents/anim/WallpaperParam;->Companion:Lcom/miui/home/recents/anim/WallpaperParam$Companion;

    invoke-virtual {v3}, Lcom/miui/home/recents/anim/WallpaperParam$Companion;->getRecentStateParams()Lcom/miui/home/recents/anim/WallpaperParam;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/home/recents/anim/WallpaperElement;->animTo(Ljava/lang/Object;)V

    .line 1166
    :cond_18
    sget-boolean v2, Lcom/miui/home/launcher/Launcher;->IS_RECENTS_WINDOW:Z

    if-nez v2, :cond_19

    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result v2

    if-nez v2, :cond_19

    .line 1167
    move-object v0, v1

    check-cast v0, Lcom/miui/home/recents/event/EnterOverviewStateEvent;

    .line 1168
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/home/recents/event/EnterOverviewStateEvent;->getToState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v0

    invoke-static {v1, v0, v5}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurWhenEnterRecents(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/LauncherState;Z)V

    goto/16 :goto_d

    .line 1170
    :cond_19
    iget-object v0, v0, Lcom/miui/home/recents/anim/StateManager$CommonState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getRecentBlurViewElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/RecentBlurViewElement;

    move-result-object v0

    sget-object v1, Lcom/miui/home/recents/anim/RecentBlurParams;->Companion:Lcom/miui/home/recents/anim/RecentBlurParams$Companion;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/RecentBlurParams$Companion;->getRecentStateParams()Lcom/miui/home/recents/anim/RecentBlurParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/RecentBlurViewElement;->animTo(Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 1150
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/event/Event;->getInfo()Lcom/miui/home/recents/event/EventInfo;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.miui.home.recents.event.ForceStopTransitionEventInfo"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;

    .line 1151
    invoke-virtual {v1}, Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;->getStopIfHasMerge()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 1152
    iget-object v0, v0, Lcom/miui/home/recents/anim/StateManager$CommonState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v1}, Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;->getToHome()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1}, Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;->getFinishCallBack()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/miui/home/recents/anim/WindowElement;->forceStop(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Runnable;)V

    goto :goto_d

    .line 1154
    :cond_1b
    iget-object v2, v0, Lcom/miui/home/recents/anim/StateManager$CommonState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v2}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v2

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/WindowElement;->hasMergeCallback()Z

    move-result v2

    if-ne v2, v5, :cond_1c

    move v4, v5

    :cond_1c
    if-eqz v4, :cond_1f

    .line 1155
    iget-object v0, v0, Lcom/miui/home/recents/anim/StateManager$CommonState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v1}, Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;->getToHome()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1}, Lcom/miui/home/recents/event/ForceStopTransitionEventInfo;->getFinishCallBack()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/miui/home/recents/anim/WindowElement;->forceStop(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Runnable;)V

    goto :goto_d

    .line 1261
    :cond_1d
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$CommonState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getShortcutMenuLayerElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;

    move-result-object v1

    sget-object v2, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;->Companion:Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;->getHomeStateParams()Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->setTo(Ljava/lang/Object;)V

    .line 1262
    iget-object v1, v0, Lcom/miui/home/recents/anim/StateManager$CommonState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v1}, Lcom/miui/home/recents/anim/StateManager;->access$getWallpaperElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WallpaperElement;

    move-result-object v1

    sget-object v2, Lcom/miui/home/recents/anim/WallpaperParam;->Companion:Lcom/miui/home/recents/anim/WallpaperParam$Companion;

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/WallpaperParam$Companion;->getHomeStateParams()Lcom/miui/home/recents/anim/WallpaperParam;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/anim/WallpaperElement;->setTo(Ljava/lang/Object;)V

    .line 1263
    iget-object v0, v0, Lcom/miui/home/recents/anim/StateManager$CommonState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getRecentBlurViewElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/RecentBlurViewElement;

    move-result-object v0

    sget-object v1, Lcom/miui/home/recents/anim/RecentBlurParams;->Companion:Lcom/miui/home/recents/anim/RecentBlurParams$Companion;

    invoke-virtual {v1}, Lcom/miui/home/recents/anim/RecentBlurParams$Companion;->getHomeStateParams()Lcom/miui/home/recents/anim/RecentBlurParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/RecentBlurViewElement;->setTo(Ljava/lang/Object;)V

    goto :goto_d

    .line 1189
    :cond_1e
    iget-object v0, v0, Lcom/miui/home/recents/anim/StateManager$CommonState;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getShortcutMenuLayerElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/event/Event;->getInfo()Lcom/miui/home/recents/event/EventInfo;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.miui.home.recents.anim.ShortcutMenuLayerParams"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/ShortcutMenuLayerElement;->animTo(Ljava/lang/Object;)V

    :cond_1f
    :goto_d
    return-void

    :pswitch_data_0
    .packed-switch 0x7e1
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2328
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
