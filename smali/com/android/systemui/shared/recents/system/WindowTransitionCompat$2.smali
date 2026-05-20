.class Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;
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

    .line 72
    iput-object p1, p0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-direct {p0}, Landroid/window/IRemoteTransition$Stub;-><init>()V

    return-void
.end method

.method private excludeDirtyChange(Lcom/android/hideapi/TransitionInfoExpose;Landroid/view/SurfaceControl$Transaction;)V
    .locals 8

    .line 570
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 574
    invoke-virtual {p1}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object v0

    .line 575
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 576
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    .line 577
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;

    .line 578
    sget v5, Lcom/android/wm/shell/util/TransitionUtil;->FLAG_TRANSIT_IN_SOSC:I

    invoke-virtual {v2, v5}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->hasFlags(I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getMode()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_1

    .line 579
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 581
    :cond_1
    invoke-static {v2}, Lcom/android/wm/shell/util/TransitionUtil;->isHome(Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 582
    invoke-virtual {v2}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getMode()I

    move-result v1

    const/4 v5, 0x4

    if-eq v1, v5, :cond_4

    invoke-virtual {v2}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->unbox()Landroid/window/TransitionInfo$Change;

    move-result-object v1

    invoke-static {v1}, Lcom/android/wm/shell/util/TransitionUtil;->isChangeModeClosing(Landroid/window/TransitionInfo$Change;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 585
    :cond_2
    invoke-virtual {v2}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getMode()I

    move-result v1

    const/4 v5, 0x3

    if-eq v1, v5, :cond_3

    invoke-virtual {v2}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->unbox()Landroid/window/TransitionInfo$Change;

    move-result-object v1

    invoke-static {v1}, Lcom/android/wm/shell/util/TransitionUtil;->isChangeModeOpening(Landroid/window/TransitionInfo$Change;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 586
    :cond_3
    invoke-virtual {v2}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->unbox()Landroid/window/TransitionInfo$Change;

    move-result-object v1

    move v7, v4

    move v4, v3

    move v3, v7

    goto :goto_1

    .line 583
    :cond_4
    :goto_0
    invoke-virtual {v2}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->unbox()Landroid/window/TransitionInfo$Change;

    move-result-object v1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    move v3, v4

    :goto_1
    if-nez v1, :cond_6

    return-void

    .line 595
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;

    .line 596
    invoke-virtual {v2}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    if-nez v5, :cond_8

    goto :goto_2

    :cond_8
    if-eqz v3, :cond_9

    .line 601
    invoke-virtual {v2}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->unbox()Landroid/window/TransitionInfo$Change;

    move-result-object v5

    if-eq v5, v1, :cond_9

    invoke-virtual {v2}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->unbox()Landroid/window/TransitionInfo$Change;

    move-result-object v5

    invoke-static {v5}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(Landroid/window/TransitionInfo$Change;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 602
    invoke-virtual {v2}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->unbox()Landroid/window/TransitionInfo$Change;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    if-eqz v4, :cond_7

    .line 603
    invoke-virtual {v2}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->unbox()Landroid/window/TransitionInfo$Change;

    move-result-object v5

    if-eq v5, v1, :cond_7

    invoke-virtual {v2}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->unbox()Landroid/window/TransitionInfo$Change;

    move-result-object v5

    invoke-static {v5}, Lcom/android/wm/shell/util/TransitionUtil;->isChangeOpen(Landroid/window/TransitionInfo$Change;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 604
    invoke-virtual {v2}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->unbox()Landroid/window/TransitionInfo$Change;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 608
    :cond_a
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 609
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionInfo$Change;

    .line 610
    invoke-virtual {p1}, Lcom/android/hideapi/TransitionInfoExpose;->unbox()Landroid/window/TransitionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 611
    invoke-static {}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "excludeDirtyChange "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_3

    :cond_b
    return-void
.end method

.method private isAllChangeModeAndMoveToTop(Landroid/window/TransitionInfo;)Z
    .locals 1

    .line 619
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionInfo$Change;

    .line 620
    invoke-static {v0}, Lcom/android/wm/shell/util/TransitionUtil;->isChangeModeOpening(Landroid/window/TransitionInfo$Change;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 622
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 625
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_2
    if-nez p1, :cond_3

    .line 630
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 632
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p5

    .line 264
    invoke-static {}, Lcom/miui/launcher/utils/BoostHelper;->getInstance()Lcom/miui/launcher/utils/BoostHelper;

    move-result-object v2

    const/16 v3, 0x96

    invoke-virtual {v2, v3}, Lcom/miui/launcher/utils/BoostHelper;->setDynamicVIPTaskIfNeeded(I)V

    .line 265
    const-class v2, Landroid/window/TransitionInfo;

    const-string v4, "isOnlyActivityRecord"

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x0

    new-array v6, v12, [Ljava/lang/Class;

    new-array v7, v12, [Ljava/lang/Object;

    move-object/from16 v3, p2

    invoke-static/range {v2 .. v7}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 266
    const-class v2, Landroid/window/TransitionInfo;

    const-string v4, "getExpectHandlerType"

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v7, v12, [Ljava/lang/Class;

    new-array v8, v12, [Ljava/lang/Object;

    move-object/from16 v3, p2

    invoke-static/range {v2 .. v8}, Lcom/miui/launcher/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 267
    invoke-static {}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HomeShellTransition IRemoteTransition mergeAnimation,expectHandlerType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " only ar = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v2, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v2}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$000(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$WindowTransitionCompatListener;

    move-result-object v2

    invoke-interface {v2, v12, v12}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$WindowTransitionCompatListener;->onTransitionMerged(ZZ)V

    .line 269
    invoke-static/range {p2 .. p2}, Lcom/android/hideapi/TransitionInfoExpose;->box(Landroid/window/TransitionInfo;)Lcom/android/hideapi/TransitionInfoExpose;

    move-result-object v14

    .line 270
    invoke-static/range {p2 .. p2}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->printLeash(Landroid/window/TransitionInfo;)V

    .line 274
    iget-object v2, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v2}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->getLock()Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15

    .line 275
    :try_start_0
    iget-object v2, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v2}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->isMainCallbackFinished()Z

    move-result v2

    const/4 v7, 0x1

    if-eqz v2, :cond_0

    .line 276
    invoke-static {}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mergeAnimation: return! because Main Callback has been finished."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$000(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$WindowTransitionCompatListener;

    move-result-object v0

    invoke-interface {v0, v7, v12}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$WindowTransitionCompatListener;->onTransitionMerged(ZZ)V

    .line 278
    monitor-exit v15

    return-void

    .line 280
    :cond_0
    iget-object v2, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v2}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v2

    invoke-virtual {v2, v0, v11, v10, v9}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->checkAndFinishTransitionIfHyperFinish(Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 281
    invoke-static {}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mergeAnimation: cur remote transition has been marked finished, the lately callback should be called directly!"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$000(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$WindowTransitionCompatListener;

    move-result-object v0

    invoke-interface {v0, v7, v12}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$WindowTransitionCompatListener;->onTransitionMerged(ZZ)V

    .line 283
    monitor-exit v15

    return-void

    .line 286
    :cond_1
    iget-object v2, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    move-object v3, v14

    move-object v4, v8

    move-object v5, v13

    move-object/from16 v6, p3

    move v13, v7

    move-object/from16 v7, p5

    invoke-static/range {v2 .. v7}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$700(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;Lcom/android/hideapi/TransitionInfoExpose;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 287
    monitor-exit v15

    return-void

    .line 290
    :cond_2
    invoke-static {v14}, Lcom/android/wm/shell/util/TransitionUtil;->hasElementCloseByApp(Lcom/android/hideapi/TransitionInfoExpose;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 291
    iget-object v0, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    const-string v1, "element close by app Merged."

    invoke-static {v0, v10, v1}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$800(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    .line 292
    monitor-exit v15

    return-void

    .line 295
    :cond_3
    invoke-static {v14}, Lcom/android/wm/shell/util/TransitionUtil;->hasDisplayChange(Lcom/android/hideapi/TransitionInfoExpose;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 296
    iget-object v0, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    const-string v1, "display change Merged."

    invoke-static {v0, v10, v1}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$800(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    .line 297
    monitor-exit v15

    return-void

    .line 300
    :cond_4
    invoke-direct {v1, v14, v10}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->excludeDirtyChange(Lcom/android/hideapi/TransitionInfoExpose;Landroid/view/SurfaceControl$Transaction;)V

    .line 301
    iget-object v2, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v2}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->onFrameWorkAnimCall()V

    .line 302
    iget-object v2, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v2}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->isWaitFinishMainAnim()Z

    move-result v2

    const/4 v7, 0x3

    if-eqz v2, :cond_d

    move v2, v12

    move v4, v2

    move v5, v4

    .line 306
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_a

    .line 307
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/window/TransitionInfo$Change;

    .line 308
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v8

    .line 309
    invoke-static {}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$200()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mergeAnimation isWaitFinishMainAnim, mode = "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ,taskInfo = "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 309
    invoke-static {v12, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-static {v6}, Lcom/android/wm/shell/util/TransitionUtil;->isHome(Landroid/window/TransitionInfo$Change;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-ne v8, v7, :cond_5

    const/4 v7, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x4

    if-ne v8, v3, :cond_6

    const/4 v7, 0x0

    goto :goto_2

    :cond_6
    const/4 v3, 0x1

    if-eq v8, v3, :cond_8

    if-eq v8, v7, :cond_8

    const/4 v3, 0x6

    if-eq v8, v3, :cond_7

    goto :goto_1

    :cond_7
    const/high16 v3, 0x100000

    .line 328
    invoke-virtual {v6, v3}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v4, 0x1

    goto :goto_1

    .line 323
    :cond_8
    invoke-virtual {v6}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    if-nez v3, :cond_9

    const/4 v2, 0x1

    :cond_9
    :goto_1
    add-int/lit8 v5, v5, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto :goto_0

    :cond_a
    move v7, v2

    .line 336
    :goto_2
    invoke-static {}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mergeAnimation needHandler = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_c

    if-nez v4, :cond_c

    .line 338
    iget-object v2, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v2}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->addInfoExpose(Lcom/android/hideapi/TransitionInfoExpose;)V

    .line 339
    iget-object v2, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v2}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v2

    invoke-virtual {v2, v0, v11}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->setMergeFinishCallback(Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V

    if-eqz v10, :cond_b

    .line 341
    iget-object v0, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->mergeStartT(Landroid/view/SurfaceControl$Transaction;)V

    .line 343
    :cond_b
    iget-object v0, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->finishMergeCallback()V

    .line 344
    iget-object v0, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->checkHandlerRunnable()V

    goto :goto_3

    .line 346
    :cond_c
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 348
    :goto_3
    iget-object v0, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$000(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$WindowTransitionCompatListener;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$WindowTransitionCompatListener;->onTransitionMerged(ZZ)V

    .line 349
    monitor-exit v15

    return-void

    .line 351
    :cond_d
    iget-object v2, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v2}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->hasMainFinishCallback()Z

    move-result v2

    if-nez v2, :cond_e

    .line 353
    invoke-static {}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mergeAnimation but main anim is finish, abort"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 355
    iget-object v0, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$000(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$WindowTransitionCompatListener;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v3, v2}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$WindowTransitionCompatListener;->onTransitionMerged(ZZ)V

    .line 357
    iget-object v0, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$000(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$WindowTransitionCompatListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$WindowTransitionCompatListener;->onFinishCompleted()V

    .line 358
    monitor-exit v15

    return-void

    .line 361
    :cond_e
    invoke-direct {v1, v9}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->isAllChangeModeAndMoveToTop(Landroid/window/TransitionInfo;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 362
    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 363
    iget-object v0, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    const-string v1, "all mode is change and flag has move to top."

    invoke-static {v0, v10, v1}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$800(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    .line 364
    monitor-exit v15

    return-void

    .line 367
    :cond_f
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v2

    .line 368
    invoke-virtual {v2, v0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getIRecentsAnimationController(Landroid/os/IBinder;)Landroid/view/IRecentsAnimationController;

    move-result-object v12

    .line 369
    invoke-static {}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TransitionTest getIRecentsAnimationController = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    if-nez v12, :cond_15

    .line 372
    iget-object v2, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v2}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->lastAnimIsOpenAppAnim()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-static/range {p2 .. p2}, Lcom/android/wm/shell/util/TransitionUtil;->isAppOpening(Landroid/window/TransitionInfo;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v2}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->getOpenLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 373
    invoke-static {}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v2, "lastAnimIsOpenAppAnim"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    .line 375
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    .line 376
    invoke-static {}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "change = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_11

    .line 378
    invoke-static {v3}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getTopActivityTypeFromTaskInfo(Landroid/app/TaskInfo;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_10

    goto :goto_5

    :cond_11
    const/4 v5, 0x1

    .line 379
    :goto_5
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v4

    if-eq v4, v5, :cond_12

    if-eq v4, v7, :cond_12

    goto :goto_4

    .line 382
    :cond_12
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    if-eqz v3, :cond_13

    .line 384
    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 385
    invoke-static {}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v5, "is open"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v4, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v4}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->containsTaskId(I)Z

    move-result v4

    if-nez v4, :cond_13

    .line 387
    invoke-static {}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v5, "!containsTaskId"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v4, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v4}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->getOpenLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {v10, v2, v4}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 389
    iget-object v4, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v4}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->addTaskId(I)V

    :cond_13
    const/high16 v3, 0x3f800000    # 1.0f

    .line 392
    invoke-virtual {v10, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    const/4 v3, 0x1

    .line 393
    invoke-virtual {v10, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    goto/16 :goto_4

    :cond_14
    const/4 v2, 0x1

    .line 399
    invoke-virtual {v10, v2}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    :try_start_1
    invoke-interface {v11, v13, v13}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_FW_FINISH"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TransitionTest special case, onTransitionFinished  end"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 404
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_FW_FINISH"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TransitionTest special case, onTransitionFinished fail"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 406
    :goto_6
    iget-object v0, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->addInfoExpose(Lcom/android/hideapi/TransitionInfoExpose;)V

    .line 407
    iget-object v0, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$000(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$WindowTransitionCompatListener;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$WindowTransitionCompatListener;->onTransitionMerged(ZZ)V

    .line 408
    monitor-exit v15

    return-void

    .line 416
    :cond_15
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v19, v13

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/16 v18, 0x0

    const/16 v23, 0x0

    .line 418
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_20

    .line 419
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/window/TransitionInfo$Change;

    move-object/from16 v20, v8

    .line 420
    sget v8, Lcom/android/wm/shell/util/TransitionUtil;->FLAG_TRANSIT_IN_SOSC:I

    invoke-virtual {v7, v8}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 421
    invoke-static {}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$200()Ljava/lang/String;

    move-result-object v5

    const-string v8, "has flag FLAG_TRANSIT_IN_SOSC"

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    .line 424
    :cond_16
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v8

    move/from16 v22, v5

    .line 425
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    if-nez v5, :cond_17

    .line 427
    invoke-static {}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$200()Ljava/lang/String;

    move-result-object v5

    move/from16 v24, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v25, v13

    const-string v13, "i = "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", changes leash = "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ", change = "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", taskInfo == null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v27, v12

    move/from16 v6, v24

    move/from16 v13, v25

    :goto_8
    const/4 v12, 0x3

    goto/16 :goto_e

    :cond_17
    move/from16 v24, v6

    move/from16 v25, v13

    .line 432
    invoke-static {v5}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getTopActivityTypeFromTaskInfo(Landroid/app/TaskInfo;)I

    move-result v6

    const/4 v13, 0x4

    .line 433
    invoke-virtual {v7, v13}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v26

    if-nez v4, :cond_19

    if-eqz v26, :cond_18

    goto :goto_9

    :cond_18
    const/4 v4, 0x0

    goto :goto_a

    :cond_19
    :goto_9
    const/4 v4, 0x1

    .line 435
    :goto_a
    invoke-static {}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$200()Ljava/lang/String;

    move-result-object v13

    move/from16 v26, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v27, v12

    const-string v12, ", check isClosingType type = "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", mode = "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", taskId = "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", changes leash = "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ", change = "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 435
    invoke-static {v13, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    const/4 v12, 0x1

    if-eq v6, v12, :cond_1b

    if-eq v6, v4, :cond_1a

    .line 471
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v6, v24

    move/from16 v13, v25

    move/from16 v4, v26

    goto :goto_8

    .line 465
    :cond_1a
    invoke-static {}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v5, "has home"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v19, v7

    move v6, v8

    move/from16 v4, v26

    const/4 v12, 0x3

    const/4 v13, 0x1

    goto :goto_e

    :cond_1b
    if-eq v8, v4, :cond_1f

    const/4 v12, 0x3

    if-eq v8, v12, :cond_1d

    const/4 v4, 0x4

    if-eq v8, v4, :cond_1c

    goto :goto_b

    :cond_1c
    move/from16 v7, v23

    goto :goto_c

    .line 452
    :cond_1d
    iget v4, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v5, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v5}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->getTaskId()I

    move-result v5

    if-ne v4, v5, :cond_1e

    .line 453
    iget-object v2, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v2}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->addInfoExpose(Lcom/android/hideapi/TransitionInfoExpose;)V

    .line 454
    iget-object v2, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v2}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v2

    invoke-virtual {v2, v0, v11}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->setMergeFinishCallback(Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V

    .line 455
    iget-object v1, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v1}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v1

    invoke-static {v0, v9, v7, v10, v1}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->noNeedAnimFinishIt(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;)V

    .line 456
    monitor-exit v15

    return-void

    :cond_1e
    :goto_b
    move/from16 v7, v23

    goto :goto_d

    :cond_1f
    const/4 v12, 0x3

    const/4 v7, 0x1

    :goto_c
    const/16 v18, 0x1

    .line 462
    :goto_d
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v23, v7

    move/from16 v6, v24

    move/from16 v13, v25

    move/from16 v4, v26

    :goto_e
    add-int/lit8 v3, v3, 0x1

    move v7, v12

    move-object/from16 v8, v20

    move/from16 v5, v22

    move-object/from16 v12, v27

    goto/16 :goto_7

    :cond_20
    move/from16 v24, v6

    move-object/from16 v20, v8

    move-object/from16 v27, v12

    move/from16 v25, v13

    const/4 v12, 0x3

    .line 475
    sget-boolean v3, Lcom/android/systemui/shared/recents/utilities/Utilities;->sIsLargeScreenMode:Z

    if-nez v3, :cond_21

    if-eqz v5, :cond_21

    .line 476
    iget-object v0, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    const-string v1, "phone and sosc transition."

    invoke-static {v0, v10, v1}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$800(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    .line 477
    monitor-exit v15

    return-void

    :cond_21
    if-nez v27, :cond_23

    .line 483
    iget-object v3, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v3}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->isMainAnimSplit()Z

    move-result v3

    if-nez v3, :cond_22

    if-eqz v25, :cond_22

    move/from16 v6, v24

    invoke-static {v6, v2, v4}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$900(ILjava/util/List;Z)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 484
    :cond_22
    iget-object v0, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    const-string/jumbo v1, "split or no home or otherCase"

    invoke-static {v0, v10, v1}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$800(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    .line 485
    monitor-exit v15

    return-void

    :cond_23
    move/from16 v6, v24

    if-nez v25, :cond_25

    .line 489
    iget-object v2, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v2}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->findHomeSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    .line 490
    invoke-static {}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TransitionTest SP_case, has controller, find home surfaceControl = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_24

    .line 492
    new-instance v3, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    const/4 v4, 0x1

    .line 493
    invoke-virtual {v3, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 494
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->addToFinishTransaction(Landroid/os/IBinder;Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_f

    .line 496
    :cond_24
    iget-object v0, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    const-string v1, "SC is null"

    invoke-static {v0, v10, v1}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$800(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    .line 497
    monitor-exit v15

    return-void

    .line 499
    :cond_25
    iget-object v2, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v2}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->isNoNeedHandleMerge()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 500
    iget-object v0, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$000(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$WindowTransitionCompatListener;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v3, v2}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$WindowTransitionCompatListener;->onTransitionMerged(ZZ)V

    .line 501
    iget-object v0, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    const-string v1, "no need handle merge Transition."

    invoke-static {v0, v10, v3, v1}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$1000(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;Landroid/view/SurfaceControl$Transaction;ZLjava/lang/String;)V

    .line 502
    monitor-exit v15

    return-void

    :cond_26
    :goto_f
    if-eqz v20, :cond_27

    .line 506
    move-object/from16 v8, v20

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_27

    move-object/from16 v8, v20

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_27

    .line 507
    iget-object v0, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$000(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$WindowTransitionCompatListener;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v3, v2}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$WindowTransitionCompatListener;->onTransitionMerged(ZZ)V

    .line 508
    iget-object v0, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dont need handle transition type.type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v10, v1}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$600(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    .line 509
    monitor-exit v15

    return-void

    .line 512
    :cond_27
    invoke-static {}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IRemoteTransition mergeAnimation isClosingType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v23

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", hasHome = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, v25

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v2, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v2}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->setActivityIsCloseType(Z)V

    .line 515
    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    .line 516
    new-instance v13, Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;

    invoke-direct {v13, v9}, Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;-><init>(Landroid/window/TransitionInfo;)V

    .line 517
    invoke-static {}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$200()Ljava/lang/String;

    move-result-object v2

    const-string v3, "before wrap app"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-virtual {v13}, Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;->getWrapped()Landroid/window/TransitionInfo;

    move-result-object v2

    new-instance v5, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;

    invoke-direct {v5}, Lcom/android/wm/shell/util/TransitionUtil$LeafTaskFilter;-><init>()V

    const/4 v7, 0x1

    iget-object v3, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v3}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v16

    move-object/from16 v3, p3

    move-object v4, v8

    move v12, v6

    move v6, v7

    move-object/from16 v23, v14

    const/4 v14, 0x3

    move-object/from16 v7, v16

    .line 518
    invoke-static/range {v2 .. v7}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrap(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Ljava/util/function/Predicate;ZLcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v2

    .line 520
    invoke-static {}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string v4, "before wrap wallpaper"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-virtual {v13}, Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;->getWrapped()Landroid/window/TransitionInfo;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/systemui/shared/recents/system/RemoteAnimationAdapterCompat$2$$ExternalSyntheticLambda2;

    .line 521
    invoke-static {v3, v10, v8, v4}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrap(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Ljava/util/function/Predicate;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v20

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 524
    invoke-static {v13, v4, v10, v8, v3}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrapNonAppsForCompat(Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v5

    const/4 v3, 0x1

    .line 525
    invoke-virtual {v10, v3}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    .line 526
    invoke-virtual {v8}, Landroid/util/ArrayMap;->clear()V

    .line 528
    iget-object v3, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v3}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v3

    invoke-virtual {v3, v0, v11}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->setMergeFinishCallback(Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V

    .line 529
    iget-object v3, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v3}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v3

    invoke-virtual {v3, v0, v9}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->setTransitionInfo(Landroid/os/IBinder;Landroid/window/TransitionInfo;)V

    if-nez v27, :cond_2b

    if-eq v12, v14, :cond_29

    const/4 v3, 0x1

    if-eq v12, v3, :cond_29

    .line 533
    invoke-static/range {v19 .. v19}, Lcom/android/wm/shell/util/TransitionUtil;->isChangeModeOpening(Landroid/window/TransitionInfo$Change;)Z

    move-result v0

    if-eqz v0, :cond_28

    if-nez v18, :cond_29

    :cond_28
    const/4 v0, 0x1

    goto :goto_10

    :cond_29
    const/4 v0, 0x0

    .line 534
    :goto_10
    invoke-static {}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TransitionTest isOpenApp = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", homeMode = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-static {v2}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v2

    if-eqz v0, :cond_2a

    .line 537
    iget-object v0, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->setMergeFinishCallback(Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V

    .line 538
    iget-object v0, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    const-string v1, "app open , do not handle from merge."

    invoke-static {v0, v10, v1}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$600(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    .line 539
    monitor-exit v15

    return-void

    .line 541
    :cond_2a
    iget-object v0, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$000(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$WindowTransitionCompatListener;

    move-result-object v0

    invoke-interface {v0, v2, v5}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$WindowTransitionCompatListener;->onClosingWindowTransitionStart([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    .line 543
    iget-object v0, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$000(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$WindowTransitionCompatListener;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2, v2}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$WindowTransitionCompatListener;->onTransitionMerged(ZZ)V

    goto :goto_11

    .line 545
    :cond_2b
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->getInstance()Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/utilities/ConnectAnimHelper;->getRecentsAnimationListenerImpl()Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_2c

    const/4 v3, 0x1

    .line 547
    invoke-interface {v0, v3}, Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;->setIsMergedAnimation(Z)V

    .line 548
    invoke-interface {v0}, Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;->getRecentController()Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 550
    iget-object v4, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-virtual {v4, v3}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->wrapRecentTransition(Lcom/android/systemui/shared/recents/system/RecentsAnimationControllerCompat;)V

    .line 553
    :cond_2c
    new-instance v22, Landroid/graphics/Rect;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Rect;-><init>()V

    .line 554
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v3

    .line 555
    invoke-virtual {v3, v0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->initIRecentsAnimationRunnerAtLeastS(Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;)Lcom/android/systemui/shared/recents/IRecentsAnimationRunnerAtLeastS;

    move-result-object v17

    move-object/from16 v18, v27

    move-object/from16 v19, v2

    move-object/from16 v21, v22

    .line 556
    invoke-interface/range {v17 .. v22}, Lcom/android/systemui/shared/recents/IRecentsAnimationRunnerAtLeastS;->onAnimationStart(Landroid/view/IRecentsAnimationController;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 557
    iget-object v0, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$000(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$WindowTransitionCompatListener;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v3, v2}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$WindowTransitionCompatListener;->onTransitionMerged(ZZ)V

    .line 559
    :goto_11
    iget-object v0, v1, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->addInfoExpose(Lcom/android/hideapi/TransitionInfoExpose;)V

    .line 560
    invoke-static {}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IRemoteTransition mergeAnimation end"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    monitor-exit v15

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
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
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v7, p3

    move-object/from16 v3, p4

    .line 77
    invoke-static {}, Lcom/miui/launcher/utils/BoostHelper;->getInstance()Lcom/miui/launcher/utils/BoostHelper;

    move-result-object v4

    const/16 v5, 0x96

    invoke-virtual {v4, v5}, Lcom/miui/launcher/utils/BoostHelper;->setDynamicVIPTaskIfNeeded(I)V

    .line 78
    invoke-static {}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TransitionTest HomeShellTransition IRemoteTransition startAnimation"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static/range {p2 .. p2}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->printLeash(Landroid/window/TransitionInfo;)V

    .line 80
    iget-object v4, v0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v4}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->getLock()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 81
    :try_start_0
    iget-object v4, v0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v4, v3, v7}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$400(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;Landroid/window/IRemoteTransitionFinishedCallback;Landroid/view/SurfaceControl$Transaction;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 82
    invoke-static {}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "transition "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to be Intercept."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    monitor-exit v8

    return-void

    .line 85
    :cond_0
    iget-object v4, v0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v4}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v4

    invoke-virtual {v4, v1, v3, v7, v2}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->checkAndFinishTransitionIfHyperFinish(Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 86
    invoke-static {}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "startAnimation: cur remote transition has been marked finished, the lately callback should be called directly!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    monitor-exit v8

    return-void

    .line 89
    :cond_1
    iget-object v4, v0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v4}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->isFinishCalled()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-nez v4, :cond_21

    iget-object v4, v0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v4}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->hasMainFinishCallback()Z

    move-result v4

    if-nez v4, :cond_21

    iget-object v4, v0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v4}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->isWaitFinishMainAnim()Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_15

    .line 99
    :cond_2
    invoke-static/range {p2 .. p2}, Lcom/android/hideapi/TransitionInfoExpose;->box(Landroid/window/TransitionInfo;)Lcom/android/hideapi/TransitionInfoExpose;

    move-result-object v11

    .line 100
    invoke-direct {v0, v11, v7}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->excludeDirtyChange(Lcom/android/hideapi/TransitionInfoExpose;Landroid/view/SurfaceControl$Transaction;)V

    .line 101
    iget-object v4, v0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v4}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->clearTempSaveOpenLeash()V

    .line 102
    iget-object v4, v0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v4}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->onFrameWorkAnimCall()V

    .line 103
    invoke-static/range {p2 .. p2}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->isClosingType(Landroid/window/TransitionInfo;)Z

    move-result v4

    .line 104
    invoke-static {}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$200()Ljava/lang/String;

    move-result-object v6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "startAnimation token = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ", isClosingType = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v6, v0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v6}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->setActivityIsCloseType(Z)V

    .line 108
    iget-object v4, v0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v4}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->setMainFinishCallback(Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V

    .line 109
    iget-object v3, v0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v3}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->setTransitionInfo(Landroid/os/IBinder;Landroid/window/TransitionInfo;)V

    .line 110
    iget-object v1, v0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v1}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getRootLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->setRoot(Landroid/view/SurfaceControl;)V

    .line 111
    new-instance v12, Landroid/util/ArrayMap;

    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    .line 112
    new-instance v1, Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;

    invoke-direct {v1, v2}, Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;-><init>(Landroid/window/TransitionInfo;)V

    .line 113
    iget-object v2, v0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    .line 114
    invoke-static {v2}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v2

    invoke-static {v1, v7, v12, v10, v2}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrapAppsForCompat(Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;Landroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;ZLcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v13

    .line 115
    iget-object v2, v0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    .line 116
    invoke-static {v2}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v2

    invoke-static {v1, v10, v7, v12, v2}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrapNonAppsForCompat(Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v14

    .line 118
    invoke-static {v1, v9, v7, v12, v5}, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->wrapNonAppsForCompat(Lcom/android/systemui/shared/recents/system/TransitionInfoCompat;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;)[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v15

    .line 131
    iget-object v1, v0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v1}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->addInfoExpose(Lcom/android/hideapi/TransitionInfoExpose;)V

    .line 133
    invoke-virtual {v11}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object v1

    .line 134
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v10

    const/4 v3, 0x0

    move/from16 v17, v3

    move/from16 v18, v17

    move-object v4, v5

    move-object v6, v4

    move v3, v9

    move/from16 v16, v3

    move/from16 v19, v16

    move/from16 v20, v19

    move/from16 v21, v20

    :goto_0
    if-ltz v2, :cond_e

    .line 135
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v10, v22

    check-cast v10, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;

    move-object/from16 p4, v1

    .line 137
    invoke-virtual {v10}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    move-object/from16 v22, v4

    .line 140
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getActivityTypeFromTaskInfo(Landroid/app/TaskInfo;)I

    move-result v4

    move-object/from16 v23, v5

    goto :goto_1

    :cond_3
    move-object/from16 v22, v4

    move-object/from16 v23, v5

    const/4 v4, -0x1

    .line 142
    :goto_1
    invoke-virtual {v10}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    move-object/from16 v4, v22

    move-object/from16 v5, v23

    goto/16 :goto_8

    :cond_4
    const/4 v5, 0x2

    if-eqz v1, :cond_7

    if-ne v4, v5, :cond_7

    .line 144
    invoke-virtual {v10}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->unbox()Landroid/window/TransitionInfo$Change;

    move-result-object v1

    invoke-static {v1}, Lcom/android/wm/shell/util/TransitionUtil;->isChangeModeOpening(Landroid/window/TransitionInfo$Change;)Z

    move-result v1

    .line 145
    invoke-virtual {v10}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getMode()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_6

    .line 146
    invoke-virtual {v10}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getMode()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_6

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v3, 0x1

    .line 149
    :goto_3
    invoke-virtual {v11}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int v9, v4, v2

    move/from16 v19, v1

    move-object v6, v10

    goto :goto_4

    .line 150
    :cond_7
    invoke-virtual {v10}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getFlags()I

    move-result v24

    and-int/lit8 v5, v24, 0x2

    if-eqz v5, :cond_8

    move-object v5, v10

    move-object/from16 v4, v22

    goto :goto_6

    :cond_8
    if-eqz v1, :cond_a

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    .line 154
    invoke-virtual {v10}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getMode()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_9

    const/4 v4, 0x4

    invoke-virtual {v10, v4}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->hasFlags(I)Z

    move-result v4

    if-eqz v4, :cond_9

    const/16 v20, 0x1

    .line 157
    :cond_9
    invoke-virtual {v10}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getAnimOpenedRotation()I

    move-result v21

    move-object v4, v1

    goto :goto_5

    :cond_a
    :goto_4
    move-object/from16 v4, v22

    :goto_5
    move-object/from16 v5, v23

    .line 159
    :goto_6
    invoke-virtual {v10}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v1

    if-nez v1, :cond_b

    invoke-virtual {v10}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getEndRotation()I

    move-result v1

    if-ltz v1, :cond_b

    .line 160
    invoke-virtual {v10}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getEndRotation()I

    move-result v1

    move/from16 p1, v3

    invoke-virtual {v10}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getStartRotation()I

    move-result v3

    if-eq v1, v3, :cond_c

    .line 161
    invoke-virtual {v10}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getEndRotation()I

    move-result v1

    invoke-virtual {v10}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getStartRotation()I

    move-result v3

    sub-int/2addr v1, v3

    .line 162
    invoke-virtual {v10}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    .line 163
    invoke-virtual {v10}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v16

    move/from16 p2, v1

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    move/from16 v16, p2

    move/from16 v18, v1

    move/from16 v17, v3

    goto :goto_7

    :cond_b
    move/from16 p1, v3

    .line 165
    :cond_c
    :goto_7
    sget v1, Lcom/android/wm/shell/util/TransitionUtil;->FLAG_TRANSIT_IN_SOSC:I

    invoke-virtual {v10, v1}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->hasFlags(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 166
    iget-object v1, v0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v1}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->setMainAnimSplit()V

    :cond_d
    move/from16 v3, p1

    :goto_8
    add-int/lit8 v2, v2, -0x1

    move-object/from16 v1, p4

    goto/16 :goto_0

    :cond_e
    move-object/from16 v22, v4

    move-object/from16 v23, v5

    if-eqz v3, :cond_f

    if-eqz v19, :cond_f

    if-eqz v20, :cond_f

    const/4 v10, 0x0

    goto :goto_9

    :cond_f
    move v10, v3

    .line 174
    :goto_9
    new-instance v5, Lcom/android/wm/shell/util/CounterRotator;

    invoke-direct {v5}, Lcom/android/wm/shell/util/CounterRotator;-><init>()V

    .line 175
    new-instance v4, Lcom/android/wm/shell/util/CounterRotator;

    invoke-direct {v4}, Lcom/android/wm/shell/util/CounterRotator;-><init>()V

    if-eqz v6, :cond_11

    if-eqz v16, :cond_11

    .line 176
    invoke-virtual {v6}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 177
    invoke-virtual {v6}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/android/hideapi/TransitionInfoExpose;->getChange(Landroid/window/WindowContainerToken;)Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;

    move-result-object v1

    .line 178
    invoke-virtual {v1}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->unbox()Landroid/window/TransitionInfo$Change;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 179
    invoke-virtual {v1}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    move-object v1, v5

    move-object/from16 v2, p3

    move-object/from16 p4, v4

    move-object/from16 v19, v15

    move-object/from16 v15, v22

    move/from16 v4, v16

    move-object/from16 v20, v5

    move-object/from16 v15, v23

    move/from16 v5, v17

    move-object/from16 v23, v13

    move-object v13, v6

    move/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/util/CounterRotator;->setup(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IFF)V

    goto :goto_a

    :cond_10
    move-object/from16 p4, v4

    move-object/from16 v20, v5

    move-object/from16 v19, v15

    move-object/from16 v15, v23

    move-object/from16 v23, v13

    move-object v13, v6

    .line 182
    invoke-static {}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has parent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v13}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but it\'s not in info."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 182
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :goto_a
    invoke-virtual/range {v20 .. v20}, Lcom/android/wm/shell/util/CounterRotator;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 186
    invoke-virtual/range {v20 .. v20}, Lcom/android/wm/shell/util/CounterRotator;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v7, v1, v9}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_b

    :cond_11
    move-object/from16 p4, v4

    move-object/from16 v20, v5

    move-object/from16 v19, v15

    move-object/from16 v15, v23

    move-object/from16 v23, v13

    move-object v13, v6

    :cond_12
    :goto_b
    if-eqz v10, :cond_18

    .line 190
    iget-object v1, v0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v1}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->hasHyperFinishCallback()Z

    move-result v1

    if-nez v1, :cond_18

    .line 191
    invoke-virtual/range {v20 .. v20}, Lcom/android/wm/shell/util/CounterRotator;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 192
    invoke-virtual/range {v20 .. v20}, Lcom/android/wm/shell/util/CounterRotator;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v11}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    mul-int/2addr v2, v3

    invoke-virtual {v7, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 195
    :cond_13
    invoke-virtual {v11}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_c
    if-ltz v1, :cond_17

    .line 196
    invoke-virtual {v11}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;

    .line 197
    invoke-virtual {v2}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl;

    if-nez v3, :cond_15

    :cond_14
    move-object/from16 v9, v20

    const/4 v5, 0x3

    goto :goto_e

    .line 200
    :cond_15
    invoke-virtual {v2}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getMode()I

    .line 206
    invoke-virtual {v2}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->unbox()Landroid/window/TransitionInfo$Change;

    move-result-object v4

    invoke-static {v4}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(Landroid/window/TransitionInfo$Change;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 207
    invoke-virtual {v2}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->unbox()Landroid/window/TransitionInfo$Change;

    move-result-object v2

    invoke-static {v2}, Lcom/android/wm/shell/util/TransitionUtil;->isElementType(Landroid/window/TransitionInfo$Change;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v11}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_d

    :cond_16
    const/4 v2, 0x0

    .line 208
    :goto_d
    invoke-virtual {v11}, Lcom/android/hideapi/TransitionInfoExpose;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x3

    mul-int/2addr v4, v5

    sub-int/2addr v4, v1

    sub-int/2addr v4, v2

    invoke-virtual {v7, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-object/from16 v9, v20

    .line 209
    invoke-virtual {v9, v7, v3}, Lcom/android/wm/shell/util/CounterRotator;->addChild(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    :goto_e
    add-int/lit8 v1, v1, -0x1

    move-object/from16 v20, v9

    goto :goto_c

    :cond_17
    move-object/from16 v9, v20

    .line 213
    array-length v1, v14

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_f
    if-ltz v1, :cond_1b

    .line 216
    aget-object v2, v14, v1

    iget-object v2, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v7, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 217
    aget-object v2, v14, v1

    iget-object v2, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v7, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    :cond_18
    move-object/from16 v9, v20

    if-eqz v13, :cond_19

    .line 221
    invoke-virtual {v13}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl;

    invoke-virtual {v9, v7, v1}, Lcom/android/wm/shell/util/CounterRotator;->addChild(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    :cond_19
    if-eqz v15, :cond_1b

    if-eqz v16, :cond_1b

    .line 223
    invoke-virtual {v15}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 224
    invoke-virtual {v15}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/android/hideapi/TransitionInfoExpose;->getChange(Landroid/window/WindowContainerToken;)Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;

    move-result-object v1

    .line 225
    invoke-virtual {v1}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->unbox()Landroid/window/TransitionInfo$Change;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 226
    invoke-virtual {v1}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/util/CounterRotator;->setup(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IFF)V

    goto :goto_10

    .line 229
    :cond_1a
    invoke-static {}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has parent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v15}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but it\'s not in info."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 229
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :goto_10
    invoke-virtual/range {p4 .. p4}, Lcom/android/wm/shell/util/CounterRotator;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 233
    invoke-virtual/range {p4 .. p4}, Lcom/android/wm/shell/util/CounterRotator;->getSurface()Landroid/view/SurfaceControl;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v7, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 234
    invoke-virtual {v15}, Lcom/android/hideapi/TransitionInfoExpose$ChangeExpose;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl;

    move-object/from16 v2, p4

    invoke-virtual {v2, v7, v1}, Lcom/android/wm/shell/util/CounterRotator;->addChild(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    goto :goto_11

    :cond_1b
    move-object/from16 v2, p4

    :goto_11
    const/4 v1, 0x1

    .line 238
    invoke-virtual {v7, v1}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    .line 239
    invoke-virtual {v12}, Landroid/util/ArrayMap;->clear()V

    .line 240
    iget-object v1, v0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v1}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->addCounterRotator(Lcom/android/wm/shell/util/CounterRotator;)V

    .line 241
    iget-object v1, v0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v1}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->addCounterRotator(Lcom/android/wm/shell/util/CounterRotator;)V

    if-nez v13, :cond_1c

    move-object/from16 v1, v23

    .line 243
    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1d

    .line 244
    iget-object v2, v0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v2}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v2

    const-string v3, "Main Anim No Home But its Running in RemoteHandler"

    invoke-virtual {v2, v3}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->setMainAnimNoNeedMerge(Ljava/lang/String;)V

    goto :goto_12

    :cond_1c
    move-object/from16 v1, v23

    .line 248
    :cond_1d
    :goto_12
    invoke-static {}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAnimationStart appsCompat size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isWallpaperTransition="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v4}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$500(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isReturnToHome="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    array-length v2, v1

    if-nez v2, :cond_1e

    .line 250
    iget-object v0, v0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    const-string v1, "non appCompat"

    invoke-static {v0, v7, v1}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$600(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    goto :goto_14

    .line 251
    :cond_1e
    iget-object v2, v0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v2}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$500(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Z

    move-result v2

    if-nez v2, :cond_20

    if-eqz v10, :cond_1f

    goto :goto_13

    .line 254
    :cond_1f
    iget-object v2, v0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v2}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$000(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$WindowTransitionCompatListener;

    move-result-object v2

    iget-object v0, v0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v0

    move/from16 v9, v21

    move-object/from16 v4, v22

    invoke-interface {v2, v1, v0, v4, v9}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$WindowTransitionCompatListener;->onOpeningWindowTransitionStart([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;Landroid/app/ActivityManager$RunningTaskInfo;I)V

    goto :goto_14

    .line 252
    :cond_20
    :goto_13
    iget-object v0, v0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$000(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$WindowTransitionCompatListener;

    move-result-object v0

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$WindowTransitionCompatListener;->onClosingWindowTransitionStart([Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    .line 256
    :goto_14
    invoke-static {}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "startAnimation end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    monitor-exit v8

    return-void

    :cond_21
    :goto_15
    move v1, v10

    .line 90
    invoke-virtual {v7, v1}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :try_start_1
    iget-object v0, v0, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat$2;->this$0:Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$300(Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;)Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v1, v4}, Lcom/android/systemui/shared/recents/utilities/WindowTransitionCallbackHelper;->buildToHomeFinishTransaction(Landroid/window/TransitionInfo;ZZ)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-interface {v3, v5, v0}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_16

    :catch_0
    move-exception v0

    .line 94
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 96
    :goto_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/systemui/shared/recents/system/WindowTransitionCompat;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_FW_FINISH"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "transition already finish,not handle new startTransition."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    monitor-exit v8

    return-void

    :catchall_0
    move-exception v0

    .line 257
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
