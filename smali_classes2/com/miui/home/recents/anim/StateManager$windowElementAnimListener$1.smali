.class public final Lcom/miui/home/recents/anim/StateManager$windowElementAnimListener$1;
.super Ljava/lang/Object;
.source "StateManager.kt"

# interfaces
.implements Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/recents/anim/StateManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/anim/StateManager;


# direct methods
.method public static synthetic $r8$lambda$2wltRgN1snCdCnnboNFqJmnFCaI(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/recents/anim/StateManager$windowElementAnimListener$1;->onAnimationEnd$lambda-0(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/util/RectFSpringAnim;)V

    return-void
.end method

.method constructor <init>(Lcom/miui/home/recents/anim/StateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/recents/anim/StateManager$windowElementAnimListener$1;->this$0:Lcom/miui/home/recents/anim/StateManager;

    .line 1345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final onAnimationEnd$lambda-0(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnimationEnd view: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager;->getPendingIconViewWeakRef()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", windowElement"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimStateManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    invoke-virtual {p0}, Lcom/miui/home/recents/anim/StateManager;->getPendingIconViewWeakRef()Ljava/lang/ref/WeakReference;

    move-result-object v0

    .line 1356
    invoke-static {p0}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/WindowElement;->getAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1357
    invoke-static {p0}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4, v0}, Lcom/miui/home/recents/anim/WindowElement;->isSameElement(Ljava/lang/ref/WeakReference;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    if-eqz v4, :cond_5

    .line 1358
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAnimationEnd: current="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", set to null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    invoke-static {p0}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/WindowElement;->isOpenAnim()Z

    move-result v2

    .line 1360
    :cond_3
    invoke-static {v2}, Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper;->postDelayClearGestureProxy(Z)V

    .line 1361
    sget-object p1, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/StateManager;->resetState()V

    .line 1362
    invoke-static {p0}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/WindowElement;->clearRunningBitmap()V

    .line 1363
    :cond_4
    invoke-static {}, Lcom/android/systemui/shared/recents/system/RecentsRotationByUserGesturePositionHelper;->clearRecentsOrientationByGesturePosition()V

    .line 1364
    invoke-static {p0, v3}, Lcom/miui/home/recents/anim/StateManager;->access$setWindowElement$p(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/anim/WindowElement;)V

    .line 1365
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/android/systemui/shared/recents/system/UserGestureProxyPositionHelper;->setIsAnimationRunning(Ljava/lang/Boolean;)V

    goto :goto_3

    .line 1367
    :cond_5
    invoke-static {p0}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElementOldList$p(Lcom/miui/home/recents/anim/StateManager;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v2, "windowElementOldList.iterator()"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1368
    :cond_6
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1369
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/recents/anim/WindowElement;

    if-eqz v2, :cond_7

    .line 1370
    invoke-virtual {v2}, Lcom/miui/home/recents/anim/WindowElement;->getAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lcom/miui/home/recents/anim/WindowElement;->getMFinishSurface()Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v0, :cond_7

    .line 1371
    invoke-virtual {v2, v0}, Lcom/miui/home/recents/anim/WindowElement;->isSameElement(Ljava/lang/ref/WeakReference;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1372
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAnimationEnd: old="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_8

    .line 1373
    invoke-virtual {v2}, Lcom/miui/home/recents/anim/WindowElement;->clearRunningBitmap()V

    .line 1374
    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_9
    :goto_3
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 2

    .line 1353
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager$windowElementAnimListener$1;->this$0:Lcom/miui/home/recents/anim/StateManager;

    new-instance v1, Lcom/miui/home/recents/anim/StateManager$windowElementAnimListener$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/anim/StateManager$windowElementAnimListener$1$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/anim/StateManager;Lcom/miui/home/recents/util/RectFSpringAnim;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAnimationStart(Lcom/miui/home/recents/util/RectFSpringAnim;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1347
    iget-object v0, p0, Lcom/miui/home/recents/anim/StateManager$windowElementAnimListener$1;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {v0}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElement$p(Lcom/miui/home/recents/anim/StateManager;)Lcom/miui/home/recents/anim/WindowElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/WindowElement;->getAnim()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1348
    iget-object p0, p0, Lcom/miui/home/recents/anim/StateManager$windowElementAnimListener$1;->this$0:Lcom/miui/home/recents/anim/StateManager;

    invoke-static {p0}, Lcom/miui/home/recents/anim/StateManager;->access$getWindowElementOldList$p(Lcom/miui/home/recents/anim/StateManager;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/recents/anim/WindowElement;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WindowElement;->changeToBelowBlurView()V

    :cond_1
    return-void
.end method
