.class Lcom/miui/home/recents/GestureStateMachine$HalfAppDragState;
.super Lcom/android/internal/util/State;
.source "GestureStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/GestureStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HalfAppDragState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/recents/GestureStateMachine;


# direct methods
.method private constructor <init>(Lcom/miui/home/recents/GestureStateMachine;)V
    .locals 0

    .line 560
    iput-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/recents/GestureStateMachine;Lcom/miui/home/recents/GestureStateMachine$1;)V
    .locals 0

    .line 560
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureStateMachine$HalfAppDragState;-><init>(Lcom/miui/home/recents/GestureStateMachine;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 563
    iget-object v0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HalfAppDragState msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/GestureStateMachine;->access$1700(Lcom/miui/home/recents/GestureStateMachine;Ljava/lang/String;)V

    .line 564
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 620
    :pswitch_0
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/NavStubView;->isSafeArea()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 621
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureSoscController;->isSplitMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 622
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getCurrentPositionTaskIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->performHalfAppToHalfApp(I)V

    goto/16 :goto_0

    .line 624
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->performHalfAppToHalfApp(I)V

    goto/16 :goto_0

    .line 627
    :cond_1
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->performHalfAppToRecents(Z)V

    goto/16 :goto_0

    .line 609
    :pswitch_1
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureSoscController;->isSplitMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 610
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/NavStubView;->canPerformQuickSwitch()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 611
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getLeftTaskIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->performHalfAppToHalfApp(I)V

    goto/16 :goto_0

    .line 613
    :cond_2
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->performHalfAppToHome()V

    goto/16 :goto_0

    .line 616
    :cond_3
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->performHalfAppToHalfApp(I)V

    goto/16 :goto_0

    .line 598
    :pswitch_2
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureSoscController;->isSplitMode()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 599
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/NavStubView;->canPerformQuickSwitch()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 600
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getRightTaskIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->performHalfAppToHalfApp(I)V

    goto/16 :goto_0

    .line 602
    :cond_4
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->performHalfAppToHome()V

    goto/16 :goto_0

    .line 605
    :cond_5
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->performHalfAppToHalfApp(I)V

    goto/16 :goto_0

    .line 591
    :pswitch_3
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureSoscController;->isSplitMode()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 592
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getLeftTaskIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->performHalfAppToHalfApp(I)V

    goto/16 :goto_0

    .line 594
    :cond_6
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->performHalfAppToHalfApp(I)V

    goto :goto_0

    .line 584
    :pswitch_4
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureSoscController;->isSplitMode()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 585
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getRightTaskIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->performHalfAppToHalfApp(I)V

    goto :goto_0

    .line 587
    :cond_7
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->performHalfAppToHalfApp(I)V

    goto :goto_0

    .line 574
    :pswitch_5
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->performHalfAppToHome()V

    goto :goto_0

    .line 577
    :pswitch_6
    invoke-static {}, Lcom/miui/home/recents/GestureSoscController;->getInstance()Lcom/miui/home/recents/GestureSoscController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureSoscController;->isSplitMode()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 578
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getCurrentPositionTaskIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->performHalfAppToHalfApp(I)V

    goto :goto_0

    .line 580
    :cond_8
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->performHalfAppToHalfApp(I)V

    goto :goto_0

    .line 571
    :pswitch_7
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->actionMoveAppDrag(Z)V

    goto :goto_0

    .line 566
    :pswitch_8
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1, v1}, Lcom/miui/home/recents/NavStubView;->isToAppHoldState(Z)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 567
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$HalfAppDragState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    invoke-static {p0}, Lcom/miui/home/recents/GestureStateMachine;->access$3300(Lcom/miui/home/recents/GestureStateMachine;)Lcom/miui/home/recents/GestureStateMachine$HalfAppTaskHoldState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/GestureStateMachine;->transitionStateTo(Lcom/android/internal/util/IState;)V

    :cond_9
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
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
