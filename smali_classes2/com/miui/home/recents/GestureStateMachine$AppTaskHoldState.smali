.class Lcom/miui/home/recents/GestureStateMachine$AppTaskHoldState;
.super Lcom/android/internal/util/State;
.source "GestureStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/GestureStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppTaskHoldState"
.end annotation


# instance fields
.field interceptMessage:Z

.field final synthetic this$0:Lcom/miui/home/recents/GestureStateMachine;


# direct methods
.method private constructor <init>(Lcom/miui/home/recents/GestureStateMachine;)V
    .locals 0

    .line 637
    iput-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    const/4 p1, 0x0

    .line 638
    iput-boolean p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppTaskHoldState;->interceptMessage:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/recents/GestureStateMachine;Lcom/miui/home/recents/GestureStateMachine$1;)V
    .locals 0

    .line 637
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureStateMachine$AppTaskHoldState;-><init>(Lcom/miui/home/recents/GestureStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 642
    iget-object v0, p0, Lcom/miui/home/recents/GestureStateMachine$AppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    const-string v1, "AppTaskHoldState enter"

    invoke-static {v0, v1}, Lcom/miui/home/recents/GestureStateMachine;->access$1700(Lcom/miui/home/recents/GestureStateMachine;Ljava/lang/String;)V

    .line 643
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$AppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->enterAppHoldState()V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 648
    iget-object v0, p0, Lcom/miui/home/recents/GestureStateMachine$AppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppTaskHoldState msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/GestureStateMachine;->access$1700(Lcom/miui/home/recents/GestureStateMachine;Ljava/lang/String;)V

    .line 649
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStateMachine$AppTaskHoldState;->interceptMessage:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p0, "GestureStateMachine"

    const-string p1, "Abort message has been received, intercept the subsequence messages"

    .line 650
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 653
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xd

    if-eq p1, v0, :cond_4

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 684
    :pswitch_0
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/NavStubView;->isSafeArea()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 685
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$AppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getCurrentPositionTaskIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->performAppToApp(I)V

    goto/16 :goto_0

    .line 687
    :cond_1
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$AppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->performAppToRecents()V

    goto/16 :goto_0

    .line 677
    :pswitch_1
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/NavStubView;->canPerformQuickSwitch()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 678
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$AppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getLeftTaskIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->performAppToApp(I)V

    goto :goto_0

    .line 680
    :cond_2
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$AppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->performAppToHome()V

    goto :goto_0

    .line 670
    :pswitch_2
    iget-object p1, p0, Lcom/miui/home/recents/GestureStateMachine$AppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p1, p1, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p1}, Lcom/miui/home/recents/NavStubView;->canPerformQuickSwitch()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 671
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$AppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getRightTaskIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->performAppToApp(I)V

    goto :goto_0

    .line 673
    :cond_3
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$AppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->performAppToHome()V

    goto :goto_0

    .line 667
    :pswitch_3
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$AppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getLeftTaskIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->performAppToApp(I)V

    goto :goto_0

    .line 664
    :pswitch_4
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$AppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getRightTaskIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->performAppToApp(I)V

    goto :goto_0

    .line 658
    :pswitch_5
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$AppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->performAppToHome()V

    goto :goto_0

    .line 661
    :pswitch_6
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$AppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getCurrentPositionTaskIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->performAppToApp(I)V

    goto :goto_0

    .line 655
    :pswitch_7
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$AppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0, v1}, Lcom/miui/home/recents/NavStubView;->actionMoveAppDrag(Z)V

    goto :goto_0

    .line 691
    :cond_4
    iput-boolean v1, p0, Lcom/miui/home/recents/GestureStateMachine$AppTaskHoldState;->interceptMessage:Z

    .line 692
    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine$AppTaskHoldState;->this$0:Lcom/miui/home/recents/GestureStateMachine;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStateMachine;->mNavStubView:Lcom/miui/home/recents/NavStubView;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->performAppToHome()V

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x3
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
