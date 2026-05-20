.class Lcom/miui/home/recents/NavStubView$H;
.super Landroid/os/Handler;
.source "NavStubView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/NavStubView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/NavStubView;


# direct methods
.method public static synthetic $r8$lambda$Ao5M3h4DE9-hSirpJAYXUghOyOs(Lcom/miui/home/recents/NavStubView$H;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView$H;->lambda$handleMessage$0()V

    return-void
.end method

.method private constructor <init>(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 1339
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/NavStubView$1;)V
    .locals 0

    .line 1339
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView$H;-><init>(Lcom/miui/home/recents/NavStubView;)V

    return-void
.end method

.method private synthetic lambda$handleMessage$0()V
    .locals 0

    .line 1410
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {p0}, Lcom/miui/home/recents/NavStubView;->access$2200(Lcom/miui/home/recents/NavStubView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1342
    iget-object v2, v0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v2}, Lcom/miui/home/recents/NavStubView;->access$1500(Lcom/miui/home/recents/NavStubView;)Landroid/view/MotionEvent;

    move-result-object v2

    .line 1344
    iget v3, v1, Landroid/os/Message;->what:I

    const/16 v4, 0x10e

    if-eq v3, v4, :cond_6

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_2

    .line 1403
    :pswitch_0
    iget-object v1, v0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v1}, Lcom/miui/home/recents/NavStubView;->access$1900(Lcom/miui/home/recents/NavStubView;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget-object v1, v0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    .line 1404
    invoke-static {v1}, Lcom/miui/home/recents/NavStubView;->access$1900(Lcom/miui/home/recents/NavStubView;)I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v1}, Lcom/miui/home/recents/NavStubView;->access$1900(Lcom/miui/home/recents/NavStubView;)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 1408
    :cond_0
    iget-object v1, v0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v1}, Lcom/miui/home/recents/NavStubView;->access$2000(Lcom/miui/home/recents/NavStubView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1409
    iget-object v1, v0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v1}, Lcom/miui/home/recents/NavStubView;->access$2100(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    move-result-object v1

    new-instance v2, Lcom/miui/home/recents/NavStubView$H$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/miui/home/recents/NavStubView$H$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/recents/NavStubView$H;)V

    const-wide/16 v5, 0xc8

    invoke-virtual {v1, v2, v5, v6}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->addFinishCallBack(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 1413
    :cond_1
    iget-object v1, v0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v1}, Lcom/miui/home/recents/NavStubView;->access$2200(Lcom/miui/home/recents/NavStubView;)V

    .line 1416
    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v1}, Lcom/miui/home/recents/NavStubView;->access$1500(Lcom/miui/home/recents/NavStubView;)Landroid/view/MotionEvent;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1417
    iget-object v1, v0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v1}, Lcom/miui/home/recents/NavStubView;->access$1500(Lcom/miui/home/recents/NavStubView;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 1418
    iget-object v0, v0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0, v4}, Lcom/miui/home/recents/NavStubView;->access$1502(Lcom/miui/home/recents/NavStubView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    goto/16 :goto_2

    .line 1427
    :pswitch_1
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v1

    iget-object v2, v0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performEnterRecent(Landroid/view/View;)V

    .line 1428
    new-instance v1, Landroid/graphics/RectF;

    move-object v6, v1

    iget-object v2, v0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v2}, Lcom/miui/home/recents/NavStubView;->access$2300(Lcom/miui/home/recents/NavStubView;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v3}, Lcom/miui/home/recents/NavStubView;->access$2400(Lcom/miui/home/recents/NavStubView;)I

    move-result v3

    int-to-float v3, v3

    const/4 v5, 0x0

    invoke-direct {v1, v5, v5, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1429
    new-instance v1, Lcom/miui/home/recents/anim/TaskViewParamsInfo;

    move-object v5, v1

    iget-object v2, v0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v2}, Lcom/miui/home/recents/NavStubView;->access$2500(Lcom/miui/home/recents/NavStubView;)I

    move-result v7

    iget-object v2, v0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v2}, Lcom/miui/home/recents/NavStubView;->access$2600(Lcom/miui/home/recents/NavStubView;)F

    move-result v8

    iget-object v2, v0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v2}, Lcom/miui/home/recents/NavStubView;->access$2700(Lcom/miui/home/recents/NavStubView;)Z

    move-result v9

    const/4 v10, 0x1

    iget-object v2, v0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    .line 1430
    invoke-static {v2}, Lcom/miui/home/recents/NavStubView;->access$2800(Lcom/miui/home/recents/NavStubView;)F

    move-result v11

    iget-object v2, v0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v2}, Lcom/miui/home/recents/NavStubView;->access$2900(Lcom/miui/home/recents/NavStubView;)F

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-object v2, v0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v2}, Lcom/miui/home/recents/NavStubView;->access$200(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/GestureHomeCalculator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/GestureHomeCalculator;->getCurTaskRadius()F

    move-result v15

    iget-object v2, v0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v2}, Lcom/miui/home/recents/NavStubView;->access$200(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/GestureHomeCalculator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/GestureHomeCalculator;->getFullscreenProgress()F

    move-result v16

    iget-object v2, v0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    .line 1431
    invoke-virtual {v2}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v17

    iget-object v2, v0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v2}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result v18

    iget-object v2, v0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v2}, Lcom/miui/home/recents/NavStubView;->access$200(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/GestureHomeCalculator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/GestureHomeCalculator;->getPer()F

    move-result v19

    iget-object v2, v0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v2}, Lcom/miui/home/recents/NavStubView;->access$300(Lcom/miui/home/recents/NavStubView;)I

    move-result v20

    iget-object v2, v0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v2}, Lcom/miui/home/recents/NavStubView;->access$3000(Lcom/miui/home/recents/NavStubView;)I

    move-result v21

    iget-object v0, v0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$3100(Lcom/miui/home/recents/NavStubView;)I

    move-result v22

    invoke-direct/range {v5 .. v22}, Lcom/miui/home/recents/anim/TaskViewParamsInfo;-><init>(Landroid/graphics/RectF;IFZZFFZLjava/lang/Runnable;FFZIFIII)V

    .line 1432
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    new-instance v2, Lcom/miui/home/recents/event/EnterTopWindowHoldStateEvent;

    new-instance v3, Lcom/miui/home/recents/event/EnterTopWindowHoldStateEventInfo;

    new-instance v5, Lcom/miui/home/recents/anim/TaskViewsParams;

    const/16 v6, 0x11

    invoke-direct {v5, v6, v1, v4}, Lcom/miui/home/recents/anim/TaskViewsParams;-><init>(ILcom/miui/home/recents/anim/TaskViewParamsInfo;Lcom/miui/home/recents/views/TaskView;)V

    invoke-direct {v3, v5}, Lcom/miui/home/recents/event/EnterTopWindowHoldStateEventInfo;-><init>(Lcom/miui/home/recents/anim/TaskViewsParams;)V

    invoke-direct {v2, v3}, Lcom/miui/home/recents/event/EnterTopWindowHoldStateEvent;-><init>(Lcom/miui/home/recents/event/EnterTopWindowHoldStateEventInfo;)V

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    goto/16 :goto_2

    .line 1422
    :pswitch_2
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/MotionEvent;

    .line 1423
    iget-object v0, v0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/NavStubView;->onPointerEvent(Landroid/view/MotionEvent;)Z

    .line 1424
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_2

    .line 1395
    :pswitch_3
    iget-object v1, v0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/miui/home/recents/NavStubView;->access$1802(Lcom/miui/home/recents/NavStubView;Z)Z

    .line 1396
    iget-object v0, v0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0, v2}, Lcom/miui/home/recents/NavStubView;->access$1700(Lcom/miui/home/recents/NavStubView;Z)V

    .line 1399
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "handleMessage MSG_RESET_GESTURE_STUB_TOUCHABLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_4
    if-eqz v2, :cond_4

    .line 1348
    iget-object v1, v0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v1}, Lcom/miui/home/recents/NavStubView;->access$100(Lcom/miui/home/recents/NavStubView;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_1

    .line 1352
    :cond_3
    iget-object v1, v0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v1}, Lcom/miui/home/recents/NavStubView;->access$200(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/GestureHomeCalculator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/GestureHomeCalculator;->getCurrX()F

    move-result v1

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    sub-float/2addr v1, v3

    .line 1353
    iget-object v3, v0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v3}, Lcom/miui/home/recents/NavStubView;->access$200(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/GestureHomeCalculator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/GestureHomeCalculator;->getCurrY()F

    move-result v3

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    sub-float/2addr v3, v4

    .line 1356
    sget-object v4, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage MSG_CHECK_GESTURE_STUB_TOUCHABLE diffX: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " diffY: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " mDownX: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1357
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " mDownY: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1358
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1356
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x41f00000    # 30.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_7

    .line 1363
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_7

    .line 1364
    iget-object v1, v0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v1}, Lcom/miui/home/recents/NavStubView;->access$1600(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/NavStubView$H;

    move-result-object v1

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1365
    iget-object v1, v0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v1}, Lcom/miui/home/recents/NavStubView;->access$1600(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/NavStubView$H;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1367
    iget-object v0, v0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v0}, Lcom/miui/home/recents/NavStubView;->access$1600(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/NavStubView$H;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :cond_4
    :goto_1
    return-void

    .line 1373
    :pswitch_5
    iget-object v1, v0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v1}, Lcom/miui/home/recents/NavStubView;->access$100(Lcom/miui/home/recents/NavStubView;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-void

    .line 1378
    :cond_5
    sget-object v1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v2, "handleMessage MSG_THROUGH_PASS_CLICK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    iget-object v1, v0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/miui/home/recents/NavStubView;->access$1700(Lcom/miui/home/recents/NavStubView;Z)V

    .line 1384
    iget-object v1, v0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    const-string v3, "disableTouch true"

    invoke-virtual {v1, v3}, Lcom/miui/home/recents/NavStubView;->finishRecentsAnimation(Ljava/lang/String;)V

    const/16 v1, 0x104

    .line 1385
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v3, 0x3c

    .line 1386
    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1389
    iget-object v1, v0, Lcom/miui/home/recents/NavStubView$H;->this$0:Lcom/miui/home/recents/NavStubView;

    invoke-static {v1, v2}, Lcom/miui/home/recents/NavStubView;->access$1802(Lcom/miui/home/recents/NavStubView;Z)Z

    const/16 v1, 0x101

    .line 1390
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x190

    .line 1391
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 1436
    :cond_6
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/event/ExitTopWindowHoldStateEvent;

    invoke-direct {v1}, Lcom/miui/home/recents/event/ExitTopWindowHoldStateEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    :cond_7
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0xff
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
